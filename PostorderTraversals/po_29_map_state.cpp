/*
 * Implementation: 29 - External Map for Node State
 * Filename: po_29_map_state.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Uses std::map<TreeNode*, int> to track progress for every node.
 * 0: Pre, 1: LeftDone, 2: RightDone.
 */

#include <iostream>
#include <vector>
#include <stack>
#include <map>
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
        if (!root) return result;

        std::stack<TreeNode*> s;
        std::map<TreeNode*, int> state; // 0=Start, 1=LeftDone, 2=RightDone

        s.push(root);
        state[root] = 0;

        while (!s.empty()) {
            TreeNode* curr = s.top();
            int st = state[curr];

            if (st == 0) {
                state[curr] = 1;
                if (curr->left) {
                    s.push(curr->left);
                    state[curr->left] = 0;
                }
            } else if (st == 1) {
                state[curr] = 2;
                if (curr->right) {
                    s.push(curr->right);
                    state[curr->right] = 0;
                }
            } else {
                result.push_back(curr->val);
                s.pop();
                // Clean up map to save memory (optional)
                state.erase(curr);
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

// --- MAIN (Updated) ---
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