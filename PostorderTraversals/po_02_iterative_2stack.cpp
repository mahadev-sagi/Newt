/*
 * Implementation: 02 - Iterative Postorder using Two Stacks
 * Filename: po_02_iterative_2stack.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 */

#include <iostream>
#include <vector>
#include <stack>
#include <cstdio>
#include <fstream>
#include <string>
#include <cstdlib>

using namespace std;

// Definition for a binary tree node.
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
        if (root == NULL) {
            return result;
        }

        std::stack<TreeNode*> s1;
        std::stack<TreeNode*> s2;

        // Step 1: Push root to first stack
        s1.push(root);

        // Step 2: Run while first stack is not empty
        while (!s1.empty()) {
            // Pop from s1 and push to s2
            TreeNode* temp = s1.top();
            s1.pop();
            s2.push(temp);

            // Push left and right children to s1
            if (temp->left) {
                s1.push(temp->left);
            }
            if (temp->right) {
                s1.push(temp->right);
            }
        }

        // Step 3: Print/Store elements from s2
        while (!s2.empty()) {
            TreeNode* temp = s2.top();
            s2.pop();
            result.push_back(temp->val);
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

// --- MAIN (Updated for LLFI) ---
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
        std::cout << result[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}