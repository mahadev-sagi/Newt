/*
 * Implementation: 03 - Iterative 1-Stack (Reverse Preorder Strategy)
 * Filename: po_03_iterative_reverse.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 */

#include <iostream>
#include <vector>
#include <stack>
#include <algorithm>
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
        std::vector<int> res;
        if (!root) return res;
        
        std::stack<TreeNode*> stack;
        stack.push(root);
        
        while (!stack.empty()) {
            TreeNode* node = stack.top();
            stack.pop();
            
            // 1. Visit Root (for now)
            res.push_back(node->val);
            
            // 2. Push Left (so it is processed after Right in the stack)
            if (node->left) stack.push(node->left);
            
            // 3. Push Right (so it is popped first)
            if (node->right) stack.push(node->right);
        }
        
        // 4. Reverse to get Postorder
        std::reverse(res.begin(), res.end());
        return res;
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
        std::cout << result[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
