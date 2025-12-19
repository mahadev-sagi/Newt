/*
 * Implementation: 09 - Classic Iterative 1-Stack (Prev Pointer)
 * Filename: po_09_iterative_classic.cpp
 * Compatibility: C++98 (Safe for Clang 3.4)
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
        if (root == NULL) return result;

        std::stack<TreeNode*> s;
        s.push(root);
        TreeNode* prev = NULL;

        while (!s.empty()) {
            TreeNode* curr = s.top();

            // Case 1: Moving Down the tree
            if (!prev || prev->left == curr || prev->right == curr) {
                if (curr->left) {
                    s.push(curr->left);
                } else if (curr->right) {
                    s.push(curr->right);
                } else {
                    // Leaf node
                    s.pop();
                    result.push_back(curr->val);
                }
            } 
            // Case 2: Moving Up from Left Child
            else if (curr->left == prev) {
                if (curr->right) {
                    s.push(curr->right);
                } else {
                    s.pop();
                    result.push_back(curr->val);
                }
            } 
            // Case 3: Moving Up from Right Child
            else if (curr->right == prev) {
                s.pop();
                result.push_back(curr->val);
            }

            prev = curr;
        }
        return result;
    }
};

// --- HARNESS ---
TreeNode* insert(TreeNode* root, int val) {
    if (!root) return new TreeNode(val);
    if (val < root->val)
        root->left = insert(root->left, val);
    else
        root->right = insert(root->right, val);
    return root;
}

// --- MAIN ---
int main(int argc, char** argv) {
    string filename = "numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    ifstream file(filename.c_str());
    int num;
    TreeNode* root = NULL;

    if (!file.is_open()) {
        vector<int> f; f.push_back(1); f.push_back(2); f.push_back(3); f.push_back(4); f.push_back(5);
        for(size_t i=0; i<f.size(); ++i) root = insert(root, f[i]);
    } else {
        while(file >> num) root = insert(root, num);
        file.close();
    }

    Solution sol;
    std::vector<int> result = sol.postorderTraversal(root);

    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}
