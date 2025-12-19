#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>

using namespace std;


void swap_ptr(int* a, int* b)
{
    int tmp;
    tmp = *a;
    *a = *b;
    *b = tmp;
}

int LomutoPartition(vector<int>& A, int l, int r)
{
    int x, i, j;

    x = A[r];     // Pivot is the last element
    i = l - 1;

    for (j = l; j <= r - 1; j++) {
        if (A[j] <= x) {
            i++;
            swap_ptr(&A[i], &A[j]);
        }
    }

    swap_ptr(&A[i+1], &A[r]);

    return i + 1;
}

void QuickSort(vector<int>& A, int l, int r)
{
    if (l < r) {
        int m = LomutoPartition(A, l, r);
        QuickSort(A, l, m-1);
        QuickSort(A, m+1, r);
    }
}

// Wrapper for the verification harness
void run_sort(vector<int>& arr) {
    if (arr.empty()) return;
    QuickSort(arr, 0, arr.size() - 1);
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
