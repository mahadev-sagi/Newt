/*
 * Implementation: 25 - Iterative Stack (Peek & Prune)
 * Filename: po_25_peek_prune.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * 1. Peek at the top node.
 * 2. If it is a Leaf OR we just moved up from one of its children:
 * - Visit node, Pop, update 'prev'.
 * 3. Else (First time seeing it):
 * - Push Right child (if exists).
 * - Push Left child (if exists).
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
        TreeNode* prev = NULL;

        while (!st.empty()) {
            TreeNode* curr = st.top();

            // Check if we can visit this node:
            // 1. It's a leaf (no children)
            // 2. OR 'prev' (last visited) was our Left child (and we have no Right child)
            // 3. OR 'prev' was our Right child (children are done)
            // Note: This logic assumes if prev is left, and right exists, we would have pushed right already.
            // Let's verify the push logic below: YES, we push Right then Left.
            
            bool isLeaf = (curr->left == NULL && curr->right == NULL);
            bool childrenVisited = (prev != NULL) && 
                                   ((curr->left == prev) || (curr->right == prev));

            if (isLeaf || childrenVisited) {
                // Visit
                result.push_back(curr->val);
                st.pop();
                prev = curr;
            } else {
                // Push children to process them next
                // Push Right first, so it is processed AFTER Left
                if (curr->right != NULL) {
                    st.push(curr->right);
                }
                if (curr->left != NULL) {
                    st.push(curr->left);
                }
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
