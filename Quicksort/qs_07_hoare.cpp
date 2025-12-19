#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>

using namespace std;

// --- IMPLEMENTATION (Standard Robust Hoare Partition) ---
int partition_hoare(vector<int>& arr, int low, int high) {
    int pivot = arr[low];
    int i = low - 1;
    int j = high + 1;
    
    while (true) {
        // Move i right until we find an element >= pivot
        do {
            i++;
        } while (arr[i] < pivot);

        // Move j left until we find an element <= pivot
        do {
            j--;
        } while (arr[j] > pivot);

        // If pointers crossed, partition is done
        if (i >= j)
            return j;

        // Swap elements to correct side
        swap(arr[i], arr[j]);
    }
}

void quicksort_hoare(vector<int>& arr, int low, int high) {
    if (low < high) {
        // Note: Hoare partition returns the index of the last element 
        // in the LEFT partition, not the pivot index itself.
        int p = partition_hoare(arr, low, high);
        
        // Recursion ranges are [low..p] and [p+1..high]
        quicksort_hoare(arr, low, p);
        quicksort_hoare(arr, p + 1, high);
    }
}

// Wrapper for harness
void run_sort(vector<int>& arr) {
    if (arr.empty()) return;
    quicksort_hoare(arr, 0, arr.size() - 1);
}

// --- VERIFICATION HARNESS ---
int main() {
    // 1. Setup
    vector<int> arr;
    ifstream file("numbers.txt");
    int num;
    
    if (!file.is_open()) {
        cout << "Warning: numbers.txt not found. Using small test set." << endl;
        arr = {10, 7, 8, 9, 1, 5}; 
    } else {
        while (file >> num) {
            arr.push_back(num);
        }
        file.close();
    }

    // 2. Execution
    run_sort(arr);

    // 3. Verification
    bool passed = true;
    for (size_t i = 0; i < arr.size() - 1; ++i) {
        if (arr[i] > arr[i+1]) {
            cerr << "FAILED at index " << i << ": " << arr[i] << " > " << arr[i+1] << endl;
            passed = false;
            return 1;
        }
    }

    if (passed) {
        cout << "VERIFICATION PASSED" << endl;
        return 0;
    }
}
