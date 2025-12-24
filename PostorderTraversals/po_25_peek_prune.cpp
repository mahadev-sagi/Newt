/*
 * Implementation: 25 - Peek and Prune Optimization
 * Filename: po_25_peek_prune.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Optimization of the 2-Stack method.
 * Instead of blindly pushing children, it peeks to see if traversal is needed.
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
        TreeNode* prev = NULL;

        while (!s.empty()) {
            TreeNode* curr = s.top();

            // Pruning Logic:
            // If leaf OR coming up from children (prev is child)
            if (!prev || prev->left == curr || prev->right == curr) {
                if (curr->left) s.push(curr->left);
                else if (curr->right) s.push(curr->right);
                else {
                    s.pop();
                    result.push_back(curr->val);
                }
            } else if (curr->left == prev) {
                if (curr->right) s.push(curr->right);
                else {
                    s.pop();
                    result.push_back(curr->val);
                }
            } else if (curr->right == prev) {
                s.pop();
                result.push_back(curr->val);
            }
            prev = curr;
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