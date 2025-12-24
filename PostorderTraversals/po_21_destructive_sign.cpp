/*
 * Implementation: 21 - Destructive (Sign Bit Marking)
 * Filename: po_21_destructive_sign.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Uses the sign bit of the node's value to mark it as "visited".
 * Requires modifying the tree structure (Data Corruption strategy).
 */

#include <iostream>
#include <vector>
#include <stack>
#include <cstdio>
#include <fstream>
#include <string>
#include <cstdlib>
#include <cmath> // for abs

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

        std::stack<TreeNode*> s;
        s.push(root);

        while (!s.empty()) {
            TreeNode* curr = s.top();

            // Check if leaf or children already processed (marked negative)
            // Note: We use 0 as a special case or assume inputs are positive for this algorithm
            bool leftDone = (curr->left == NULL || curr->left->val < 0);
            bool rightDone = (curr->right == NULL || curr->right->val < 0);

            if (leftDone && rightDone) {
                // Visit
                result.push_back(abs(curr->val));
                // Mark as processed (destructive)
                curr->val = -abs(curr->val);
                s.pop();
            } else {
                // Push children (Right first, so Left is processed first)
                if (!rightDone) s.push(curr->right);
                if (!leftDone) s.push(curr->left);
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