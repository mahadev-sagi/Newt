#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>
#include <future> // Required for parallelism

using namespace std;

// --- IMPLEMENTATION ---

// Standard Partition (Lomuto)
int partition(vector<int>& arr, int low, int high) {
    int pivot = arr[high];
    int i = (low - 1);
    for (int j = low; j <= high - 1; j++) {
        if (arr[j] <= pivot) {
            i++;
            swap(arr[i], arr[j]);
        }
    }
    swap(arr[i + 1], arr[high]);
    return (i + 1);
}

// Sequential sort for small chunks (Optimization)
void quicksort_seq(vector<int>& arr, int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quicksort_seq(arr, low, pi - 1);
        quicksort_seq(arr, pi + 1, high);
    }
}

void quicksort_parallel(vector<int>& arr, int low, int high) {
    if (low < high) {
        // If the array chunk is small, run sequential to avoid thread overhead
        if (high - low < 1000) {
            quicksort_seq(arr, low, high);
            return;
        }

        int pi = partition(arr, low, high);

        // OD: Spawn a new thread for the left partition
        auto left_future = async(launch::async, [&]() {
            quicksort_parallel(arr, low, pi - 1);
        });

        // Run the right partition on the current thread
        quicksort_parallel(arr, pi + 1, high);

        // Wait for the left thread to finish
        left_future.get();
    }
}

// Wrapper
void run_sort(vector<int>& arr) {
    if (arr.empty()) return;
    quicksort_parallel(arr, 0, arr.size() - 1);
}

// --- VERIFICATION HARNESS ---
int main() {
    vector<int> arr;
    ifstream file("numbers.txt");
    int num;
    
    if (!file.is_open()) {
        cout << "Warning: numbers.txt not found. Using small test set." << endl;
        arr = {10, 7, 8, 9, 1, 5, 20, 15, 3}; 
    } else {
        while (file >> num) {
            arr.push_back(num);
        }
        file.close();
    }

    run_sort(arr);

    // Verification
    for (size_t i = 0; i < arr.size() - 1; ++i) {
        if (arr[i] > arr[i+1]) {
            cerr << "FAILED at index " << i << ": " << arr[i] << " > " << arr[i+1] << endl;
            return 1;
        }
    }
    cout << "VERIFICATION PASSED" << endl;
    return 0;
}
