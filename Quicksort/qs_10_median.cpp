#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>

using namespace std;

// --- IMPLEMENTATION ---

void swap_int(int *a, int *b) {
    int t = *a;
    *a = *b;
    *b = t;
}

// Compute the median of 5 elements and return its INDEX in the original slice
int median5(int *a) {
    int a0 = a[0], a1 = a[1], a2 = a[2], a3 = a[3], a4 = a[4];

    // Sorting network logic to sort the local variables
    if (a1 < a0) swap_int(&a0, &a1);
    if (a2 < a0) swap_int(&a0, &a2);
    if (a3 < a0) swap_int(&a0, &a3);
    if (a4 < a0) swap_int(&a0, &a4);
    if (a2 < a1) swap_int(&a1, &a2);
    if (a3 < a1) swap_int(&a1, &a3);
    if (a4 < a1) swap_int(&a1, &a4);
    if (a3 < a2) swap_int(&a2, &a3);
    if (a4 < a2) swap_int(&a2, &a4);

    // a2 is now the median value. Find which index held it.
    if (a2 == a[0]) return 0;
    if (a2 == a[1]) return 1;
    if (a2 == a[2]) return 2;
    if (a2 == a[3]) return 3;
    return 4;
}

// Partition the array around a specific pivot index
int partition(int *a, int size, int pivotIdx) {
    int pivotValue = a[pivotIdx];
    swap_int(&a[pivotIdx], &a[size-1]); // Move pivot to end
    int storePos = 0;
    for(int loadPos=0; loadPos < size-1; loadPos++) {
        if (a[loadPos] < pivotValue) {
            swap_int(&a[loadPos], &a[storePos]);
            storePos++;
        }
    }
    swap_int(&a[storePos], &a[size-1]); // Move pivot to final place
    return storePos;
}

// Select the k-th smallest element (Median of Medians logic)
void select_pivot(int *a, int size, int k) {
    if (size < 5) {
        // Insertion sort for small arrays
        for (int i=0; i<size; i++)
            for (int j=i+1; j<size; j++)
                if (a[j] < a[i])
                    swap_int(&a[i], &a[j]);
        return;
    }

    int groupNum = 0;
    int *group = a;

    // 1. Divide into groups of 5 and find medians
    for( ; groupNum*5 <= size-5; group += 5, groupNum++) {
        // Move the median of the group to the beginning of the array
        swap_int(&group[median5(group)], &a[groupNum]);
    }

    // 2. Recursively select the median of medians
    int numMedians = size/5;
    int MOMIdx = numMedians/2;
    select_pivot(a, numMedians, MOMIdx); // Recursive call

    // 3. Partition around the median of medians
    int newMOMIdx = partition(a, size, MOMIdx);

    // 4. Recurse if we haven't found the k-th element yet
    if (k != newMOMIdx) {
        if (k < newMOMIdx) {
            select_pivot(a, newMOMIdx, k);
        } else {
            select_pivot(a + newMOMIdx + 1, size - newMOMIdx - 1, k - newMOMIdx - 1);
        }
    }
}

void quicksort_mom(int *x, int first, int last) {
    int size = last - first + 1;
    
    // Base case: Use simple sort for small arrays
    if (size < 5) {
        for (int i=first; i<=last; i++)
            for (int j=i+1; j<=last; j++)
                if (x[j] < x[i])
                    swap_int(&x[i], &x[j]);
        return;
    }

    // Use Median of Medians to partition the array such that 
    // the median is in the correct position (size/2)
    select_pivot(x + first, size, size/2); 
    
    int pivot = first + size/2;
    
    quicksort_mom(x, first, pivot-1);
    quicksort_mom(x, pivot+1, last);
}

// Wrapper
void run_sort(vector<int>& arr) {
    if (arr.empty()) return;
    quicksort_mom(arr.data(), 0, arr.size() - 1);
}

// --- VERIFICATION HARNESS ---
int main() {
    vector<int> arr;
    ifstream file("numbers.txt");
    int num;
    
    if (!file.is_open()) {
        cout << "Warning: numbers.txt not found. Using small test set." << endl;
        arr = {10, 7, 8, 9, 1, 5, 2, 6, 11, 3}; 
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
