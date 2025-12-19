#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>

using namespace std;

// --- IMPLEMENTATION ---

// Standard swap function
void swap_int(int* a, int* b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// Partition function (originally named 'sort' in your snippet)
int partition(vector<int>& arr, int start, int end) {
    int pivot = arr[end]; // Choosing the last element as pivot
    int i = (start - 1);
    for (int j = start; j <= end - 1; j++) {
        if (arr[j] < pivot) {
            i++;
            swap_int(&arr[j], &arr[i]);
        }
    }
    swap_int(&arr[i + 1], &arr[end]);
    return (i + 1);
}

// Iterative Quicksort
void quicksort_iterative(vector<int>& arr, int arrSize) {
    if (arrSize <= 1) return;

    // Use vector as a stack
    vector<int> stack;
    
    int start = 0;
    int end = arrSize - 1;
    
    // Push initial range
    stack.push_back(start);
    stack.push_back(end);

    while (!stack.empty()) {
        end = stack.back();
        stack.pop_back();
        start = stack.back();
        stack.pop_back();

        // Partition the array
        int pivot = partition(arr, start, end);

        // Logic to push larger side first (optimization for stack depth)
        // Check if Left side is larger than Right side
        if (pivot - start > end - pivot) { 
            // Push Left (Start -> Pivot-1)
            if (start < pivot - 1) {
                stack.push_back(start);
                stack.push_back(pivot - 1);
            }
            // Push Right (Pivot+1 -> End)
            if (pivot + 1 < end) {
                stack.push_back(pivot + 1);
                stack.push_back(end);
            }
        } else { 
            // Push Right first
            if (pivot + 1 < end) {
                stack.push_back(pivot + 1);
                stack.push_back(end);
            }
            // Push Left second
            if (start < pivot - 1) {
                stack.push_back(start);
                stack.push_back(pivot - 1);
            }
        }
    }
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
    if (!arr.empty()) {
        quicksort_iterative(arr, arr.size());
    }

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
