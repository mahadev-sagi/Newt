/*
 * Implementation: 26 - Iterative with std::set (External State)
 * Filename: po_26_std_set.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * 1. Peek at current node on stack.
 * 2. Check if children are "ready" (NULL or already present in std::set).
 * 3. If ready: Visit node, insert into set, pop.
 * 4. Else: Push children (Right then Left) to stack.
 */

#include <iostream>
#include <vector>
#include <stack>
#include <set>
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

        // Track completed nodes (pointers)
        std::set<TreeNode*> visited;

        while (!st.empty()) {
            TreeNode* curr = st.top();

            // Condition to visit 'curr':
            // 1. Left is NULL or already visited
            bool leftReady = (curr->left == NULL || visited.count(curr->left));
            // 2. Right is NULL or already visited
            bool rightReady = (curr->right == NULL || visited.count(curr->right));

            if (leftReady && rightReady) {
                // Children are done, so we can visit 'curr'
                result.push_back(curr->val);
                visited.insert(curr); // Mark as done
                st.pop();
            } else {
                // Push children to stack
                // Push Right first so it's processed after Left
                if (curr->right != NULL && !visited.count(curr->right)) {
                    st.push(curr->right);
                }
                if (curr->left != NULL && !visited.count(curr->left)) {
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
