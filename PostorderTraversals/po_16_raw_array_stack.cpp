/*
 * Implementation: 16 - Iterative using Raw C-Array Stack
 * Filename: po_16_raw_array_stack.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 */

#include <iostream>
#include <vector>
#include <cstdio>
#include <fstream>
#include <string>
#include <cstdlib>
#include <algorithm>

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
        if (root == NULL) return result;

        // Raw Array Stack Simulation
        const int MAX_SIZE = 100000; 
        TreeNode* stack[MAX_SIZE];
        int top = -1;

        // Raw Output Buffer
        int output[MAX_SIZE];
        int outIndex = 0;

        // Push Root
        stack[++top] = root;

        while (top >= 0) {
            TreeNode* node = stack[top--];
            output[outIndex++] = node->val;

            if (node->left) {
                stack[++top] = node->left;
            }
            if (node->right) {
                stack[++top] = node->right;
            }
        }

        // Transfer from raw array to vector (reading backwards for Postorder)
        for (int i = outIndex - 1; i >= 0; i--) {
            result.push_back(output[i]);
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