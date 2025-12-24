/*
 * Implementation: 10 - Class-Based Recursive (Member State)
 * Filename: po_10_functor.cpp
 * Compatibility: C++98 (Safe for Clang 3.4)
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

class Solution {
private:
    // OD: Result vector is a member variable, not passed as argument
    std::vector<int> result;

    void traverse(TreeNode* node) {
        if (!node) return;
        traverse(node->left);
        traverse(node->right);
        result.push_back(node->val);
    }

public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        result.clear();
        traverse(root);
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
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}