/*
 * Implementation: 07 - Iterative Stack with Boolean Flag
 * Filename: po_07_iterative_flag.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 */

#include <iostream>
#include <vector>
#include <stack>
#include <utility> // for std::pair
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

        // Pair: Node pointer, boolean flag (false = visit children, true = visit self)
        std::stack<std::pair<TreeNode*, bool> > st;
        st.push(std::make_pair(root, false));

        while (!st.empty()) {
            // Get top element
            TreeNode* node = st.top().first;
            bool visited = st.top().second;
            st.pop();

            if (node == NULL) continue;

            if (visited) {
                // Second time seeing this node: visit it
                result.push_back(node->val);
            } else {
                // First time: mark as visited and push back
                st.push(std::make_pair(node, true));
                
                // Push children (Right then Left, so Left is processed first)
                st.push(std::make_pair(node->right, false));
                st.push(std::make_pair(node->left, false));
            }
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
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}