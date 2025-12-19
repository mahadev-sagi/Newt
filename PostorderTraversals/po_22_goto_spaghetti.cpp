/*
 * Implementation: 22 - Iterative using Goto (Unstructured)
 * Filename: po_22_goto_spaghetti.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Uses the 'Reverse Preorder' strategy.
 * Replaces structured 'while' loops with explicit 'goto' labels.
 * This simulates a lower-level assembly view in C++.
 */

#include <iostream>
#include <vector>
#include <stack>
#include <algorithm> // for reverse
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

        std::stack<TreeNode*> st;
        st.push(root);

        // --- Start of Unstructured Block ---
    loop_start:
        if (st.empty()) {
            goto loop_end;
        }

        {
            // Scope for local variable
            TreeNode* node = st.top();
            st.pop();
            result.push_back(node->val);

            // Push Left
            if (node->left == NULL) goto check_right;
            st.push(node->left);

        check_right:
            // Push Right
            if (node->right == NULL) goto loop_repeat;
            st.push(node->right);
        }

    loop_repeat:
        goto loop_start;

    loop_end:
        // --- End of Unstructured Block ---

        std::reverse(result.begin(), result.end());
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
