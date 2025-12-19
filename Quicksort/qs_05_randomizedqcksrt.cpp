#include <iostream>
#include <vector>
#include <fstream>
#include <cstdlib>
#include <algorithm>

using namespace std;

// --- IMPLEMENTATION (Adapted from your source) ---

// Standard Partitioning logic
int partitioning(vector<int>& A, int starting, int ending)
{
    int i = starting + 1;
    int pivot1 = A[starting];
    for (int j = starting + 1; j <= ending; j++)
    {
        if (A[j] < pivot1)
        {
            swap(A[i], A[j]);
            i += 1;
        }
    }
    swap(A[starting], A[i - 1]);
    return i - 1;
}

// Randomized Pivot Selection
int randompartitioning(vector<int>& A, int starting, int ending)
{
    // Generates a random index between starting and ending
    int random = starting + rand() % (ending - starting + 1);

    // Swap random pivot to the start so standard partition can handle it
    swap(A[random], A[starting]);
    
    return partitioning(A, starting, ending);
}

// Recursive Sort Function
void QUICKSORTING(vector<int>& A, int starting, int ending)
{
    if (starting < ending)
    {
        int pivot1_pos = randompartitioning(A, starting, ending);
        QUICKSORTING(A, starting, pivot1_pos - 1);
        QUICKSORTING(A, pivot1_pos + 1, ending);
    }
}

// --- VERIFICATION HARNESS ---
int main() {
    // 1. Setup
    vector<int> arr;
    ifstream file("numbers.txt");
    int num;
    
    // Seed the random number generator
    srand(time(0));

    if (!file.is_open()) { 
        cout << "Warning: numbers.txt not found, using small test set.\n";
        arr = {10, 7, 8, 9, 1, 5}; 
    } else {
        while (file >> num) arr.push_back(num);
        file.close();
    }

    // 2. Execution
    if (!arr.empty()) {
        QUICKSORTING(arr, 0, arr.size() - 1);
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
