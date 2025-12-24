/*
 * Implementation: 20 - Struct of Arrays (Global Memory)
 * Filename: po_20_struct_of_arrays.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic: Traversing Indices in Global Arrays.
 * Fix:
 */

#include <iostream>
#include <vector>
#include <stack>
#include <cstdio>  // for fopen, fscanf
#include <cstdlib> // for exit
#include <algorithm>

using namespace std;

// Global Arrays simulating the Tree Memory
const int MAX_NODES = 50000; // Sufficient size for input
int val[MAX_NODES];
int left_child[MAX_NODES];  // -1 indicates NULL
int right_child[MAX_NODES]; // -1 indicates NULL
int free_idx = 0;           // Tracks next available slot

// Helper to reset global memory
void initMemory() {
    free_idx = 0;
    for(int i=0; i<MAX_NODES; ++i) {
        left_child[i] = -1;
        right_child[i] = -1;
        val[i] = 0;
    }
}

// Helper to insert into the Array-based BST
int insertArray(int rootIdx, int value) {
    // If tree is empty (rootIdx is -1), create root at index 0
    if (rootIdx == -1) {
        int newIdx = free_idx++;
        val[newIdx] = value;
        return newIdx;
    }

    int curr = rootIdx;
    while (true) {
        if (value < val[curr]) {
            if (left_child[curr] == -1) {
                int newIdx = free_idx++;
                val[newIdx] = value;
                left_child[curr] = newIdx;
                break;
            } else {
                curr = left_child[curr];
            }
        } else {
            if (right_child[curr] == -1) {
                int newIdx = free_idx++;
                val[newIdx] = value;
                right_child[curr] = newIdx;
                break;
            } else {
                curr = right_child[curr];
            }
        }
    }
    return rootIdx;
}

class Solution {
public:
    // Traversal uses INDICES (int), not Pointers
    std::vector<int> postorderTraversal(int rootIndex) {
        std::vector<int> result;
        if (rootIndex == -1) return result;

        std::stack<int> s1;
        std::stack<int> s2;

        s1.push(rootIndex);

        while (!s1.empty()) {
            int idx = s1.top();
            s1.pop();
            s2.push(idx);

            if (left_child[idx] != -1) s1.push(left_child[idx]);
            if (right_child[idx] != -1) s1.push(right_child[idx]);
        }

        while (!s2.empty()) {
            int idx = s2.top();
            s2.pop();
            result.push_back(val[idx]);
        }
        return result;
    }
};

// --- MAIN (Updated to C-Style I/O) ---
int main(int argc, char** argv) {
    // 1. Determine Filename (char* instead of string)
    const char* filename = "../../numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    // 2. Open File using C-style fopen
    FILE* fp = fopen(filename, "r");
    if (!fp) {
        // Fallback: Try looking in current directory if ../../ failed
        filename = "numbers.txt";
        fp = fopen(filename, "r");
    }

    // If still failing, output error (optional, mostly for debug)
    if (!fp) {
        fprintf(stderr, "Error: cannot open file %s\n", filename);
        return 1;
    }
    
    initMemory(); // Clear arrays
    
    int num;
    int array_root_idx = -1;

    // 3. Read using fscanf
    while(fscanf(fp, "%d", &num) == 1) {
        array_root_idx = insertArray(array_root_idx, num);
    }
    fclose(fp);

    // 4. Run Traversal
    Solution sol;
    std::vector<int> result = sol.postorderTraversal(array_root_idx);

    // 5. Print Actual Output
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}
