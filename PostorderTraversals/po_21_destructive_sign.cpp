/*
 * Implementation: 21 - Iterative Destructive (Sign Bit Marking)
 * Filename: po_21_destructive_sign.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * 1. Stack stores Node pointers.
 * 2. If Node value is POSITIVE:
 * - Negate value (Mark as visited).
 * - Push Right Child.
 * - Push Left Child.
 * 3. If Node value is NEGATIVE:
 * - Restore value (Negate back).
 * - Visit/Print.
 * - Pop.
 * Assumption: Tree values must initially be positive.
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

        std::stack<TreeNode*> st;
        st.push(root);

        while (!st.empty()) {
            TreeNode* node = st.top();

            if (node->val > 0) {
                // First time seeing this node (Positive)
                
                // 1. Mark as visited (Destructive modification)
                node->val = -node->val;

                // 2. Push children (Right then Left)
                if (node->right) st.push(node->right);
                if (node->left) st.push(node->left);

            } else {
                // Second time seeing this node (Negative/Marked)
                
                // 1. Restore value
                node->val = -node->val;
                
                // 2. Visit
                result.push_back(node->val);
                
                // 3. Pop
                st.pop();
            }
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
