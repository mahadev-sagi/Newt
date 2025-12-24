/*
 * Implementation: 28 - Control Flow via Exception Handling
 * Filename: po_28_exception_flow.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Uses throw/catch to manage the 'Return' logic from recursion depths.
 * (Highly inefficient, purely for fault injection diversity).
 */

#include <iostream>
#include <vector>
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

// Custom exception for control flow
struct ReturnSignal {};

class Solution {
    std::vector<int> res;
    
    void unsafeTraverse(TreeNode* node) {
        if (!node) throw ReturnSignal(); // Signal to go back
        
        try {
            unsafeTraverse(node->left);
        } catch (ReturnSignal) {
            // Caught return from left, proceed
        }

        try {
            unsafeTraverse(node->right);
        } catch (ReturnSignal) {
            // Caught return from right, proceed
        }

        res.push_back(node->val);
    }

public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        res.clear();
        try {
            unsafeTraverse(root);
        } catch (ReturnSignal) {
            // Done
        }
        return res;
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