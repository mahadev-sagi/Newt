#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>

using namespace std;

// --- IMPLEMENTATION (Extracted from your code) ---
template <class Tmp>
void partition3(vector<Tmp>& data, long l, long r, long &i, long &j) {
    i = l - 1; j = r;
    long p = l - 1, q = r;
    Tmp v = data[r];

    while (true) {
        while (data[++i] < v);
        while (v < data[--j]) if (j == l) break;

        if (i >= j) break;

        swap(data[i], data[j]);

        if (data[i] == v) {
            p++;
            swap(data[p], data[i]);
        }

        if (data[j] == v) {
            q--;
            swap(data[j], data[q]);
        }
    }
    swap(data[i], data[r]);
    j = i - 1;
    i = i + 1;
    for (long k = l; k <= p; k++, j--) swap(data[k], data[j]);
    for (long k = r - 1; k >= q; k--, i++) swap(data[i], data[k]);
}

template <class Tmp>
void quicksort3(vector<Tmp>& data, long l, long r) {
    if (r <= l) return;
    long i, j;
    partition3(data, l, r, i, j);
    quicksort3(data, l, j);
    quicksort3(data, i, r);
}

// Wrapper for harness
void run_sort(vector<int>& arr) {
    if (arr.empty()) return;
    quicksort3(arr, 0, arr.size() - 1);
}

// --- VERIFICATION HARNESS ---
int main() {
    vector<int> arr;
    ifstream file("numbers.txt");
    int num;
    
    if (!file.is_open()) {
        cout << "Warning: numbers.txt not found. Using small test set." << std::endl;
        arr = {10, 7, 8, 9, 1, 5, 5, 5, 8};
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
