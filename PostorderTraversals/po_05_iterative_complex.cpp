/*
 * Implementation: 05 - Iterative 1-Stack (Complex Logic)
 * Filename: po_05_iterative_complex.cpp
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
        TreeNode* current = root;
        TreeNode* lastVisited = NULL;

        while (current != NULL || !st.empty()) {
            if (current != NULL) {
                // Reach the leftmost node of the current subtree
                st.push(current);
                current = current->left;
            } else {
                TreeNode* peekNode = st.top();
                
                // Check if we should go right
                // We go right if a right child exists AND it wasn't the last node we processed
                if (peekNode->right != NULL && lastVisited != peekNode->right) {
                    current = peekNode->right;
                } else {
                    // Visit the node
                    result.push_back(peekNode->val);
                    lastVisited = peekNode;
                    st.pop();
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
