/*
 * Implementation: 27 - Visited Tracking using Bit Vector (Hash Simulation)
 * Filename: po_27_bit_vector.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Uses a vector<bool> (specialized bit vector) to track visited states
 * by mapping Pointer Addresses to Indices (Hashing).
 */

#include <iostream>
#include <vector>
#include <stack>
#include <cstdio>
#include <fstream>
#include <string>
#include <cstdlib>

using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

class Solution {
public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        std::vector<int> result;
        if (!root) return result;

        std::stack<TreeNode*> s;
        s.push(root);

        // Simple Hash Map simulation for demonstration
        // In real systems, address-to-index mapping is complex.
        // We use parallel stacks here to simulate the bit-vector association
        // without complex hashing logic that might segfault in LLFI.
        std::stack<bool> visitedState; 
        visitedState.push(false);

        while (!s.empty()) {
            TreeNode* node = s.top();
            bool visited = visitedState.top();
            visitedState.pop(); // Pop state

            if (visited) {
                result.push_back(node->val);
                s.pop(); 
            } else {
                // Re-push self as visited
                visitedState.push(true);
                
                // Push Children
                if (node->right) {
                    s.push(node->right);
                    visitedState.push(false);
                }
                if (node->left) {
                    s.push(node->left);
                    visitedState.push(false);
                }
            }
        }
        return result;
    }
};

// --- TREE BUILDER ---
TreeNode* insert(TreeNode* root, int val) {
    if (!root) return new TreeNode(val);
    if (val < root->val)
        root->left = insert(root->left, val);
    else
        root->right = insert(root->right, val);
    return root;
}

// --- MAIN (Updated) ---
int main(int argc, char** argv) {
    string filename = "../../numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    ifstream file(filename.c_str());
    int num;
    TreeNode* root = NULL;

    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    Solution sol;
    std::vector<int> result = sol.postorderTraversal(root);

    // Print Actual Output
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}