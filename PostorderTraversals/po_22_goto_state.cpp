/*
 * Implementation: 22 - GOTO-based State Machine (Spaghetti Code)
 * Filename: po_22_goto_spaghetti.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic: Simulates recursion using explicit labels and jumps.
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
        if (!root) return result;

        std::stack<TreeNode*> s;
        TreeNode* curr = root;
        TreeNode* lastVisited = NULL;

    START:
        if (curr != NULL) {
            s.push(curr);
            curr = curr->left;
            goto START;
        }

    CHECK_STACK:
        if (s.empty()) goto END;

        {
            TreeNode* peek = s.top();
            if (peek->right != NULL && lastVisited != peek->right) {
                curr = peek->right;
                goto START;
            } else {
                result.push_back(peek->val);
                lastVisited = peek;
                s.pop();
                goto CHECK_STACK;
            }
        }

    END:
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