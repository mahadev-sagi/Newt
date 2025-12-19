/*
 * Implementation: 01 - Standard Recursive (LeetCode Style)
 * Filename: po_01_standard.cpp
 * Compatibility: C++98/C++03 (Safe for Clang 3.4 default)
 */

#include <iostream>
#include <vector>
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
    
    TreeNode() : val(0), left(NULL), right(NULL) {}
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};

class Solution {
public:
    std::vector<int> l;

    void postorder(TreeNode* root) {
        if (root == NULL)
            return;
        
        // Recurse Left
        if (root->left) postorder(root->left);
        
        // Recurse Right
        if (root->right) postorder(root->right);
        
        // Visit Root
        l.push_back(root->val);
    }

    std::vector<int> postorderTraversal(TreeNode* root) {
        // Clear vector in case of reuse
        l.clear(); 
        postorder(root);
        return l;
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
        vector<int> f; f.push_back(1); f.push_back(2); f.push_back(3);
        for(size_t i=0; i<f.size(); ++i) root = insert(root, f[i]);
    } else {
        while(file >> num) root = insert(root, num);
        file.close();
    }

    Solution sol;
    std::vector<int> result = sol.postorderTraversal(root);

    for (size_t i = 0; i < result.size(); ++i) {
        std::cout << result[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
