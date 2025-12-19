#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>

using namespace std;

// --- IMPLEMENTATION (Extracted from your code) ---
template <class T>
long partition2(vector<T>& data, long start, long end) {
    T pivotValue = data[start];
    long pivotPosition = start;

    for (long pos = start + 1; pos <= end; pos++) {
        if (data[pos] < pivotValue) {
            swap(data[pivotPosition + 1], data[pos]);
            swap(data[pivotPosition], data[pivotPosition + 1]);
            pivotPosition++;
        }
    }
    return pivotPosition;
}

template <class T>
void quickSort2(vector<T>& data, long start, long end) {
    if (start < end) {
        long p = partition2(data, start, end);
        quickSort2(data, start, p - 1);
        quickSort2(data, p + 1, end);
    }
}

// Wrapper for harness
void run_sort(vector<int>& arr) {
    if (arr.empty()) return;
    quickSort2(arr, 0, arr.size() - 1);
}

// --- VERIFICATION HARNESS ---
int main() {
    vector<int> arr;
    ifstream file("numbers.txt");
    int num;
    
    if (!file.is_open()) {
        cout << "Warning: numbers.txt not found. Using small test set." << std::endl;
        arr = {10, 7, 8, 9, 1, 5};
    } else {
        while (file >> num) arr.push_back(num);
        file.close();
    }

    run_sort(arr);

    for (size_t i = 0; i < arr.size() - 1; ++i) {
        if (arr[i] > arr[i+1]) {
            cerr << "FAILED at index " << i << endl;
            return 1;
        }
    }
    cout << "VERIFICATION PASSED" << endl;
    return 0;
}
