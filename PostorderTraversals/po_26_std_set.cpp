/*
 * Implementation: 26 - Visited Tracking using std::set
 * Filename: po_26_std_set.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Uses an external std::set to track which nodes have been 'expanded'.
 * High memory overhead (O(N) Set nodes) but conceptually simple.
 */

#include <iostream>
#include <vector>
#include <stack>
#include <set> // O(log N) lookups
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
        std::set<TreeNode*> visited; // Tracks if children expanded

        s.push(root);

        while (!s.empty()) {
            TreeNode* node = s.top();

            // Check if we already expanded this node
            if (visited.count(node)) {
                result.push_back(node->val);
                s.pop();
                // cleanup optimization: visited.erase(node);
            } else {
                visited.insert(node);
                // Push children (Right first, then Left)
                if (node->right) s.push(node->right);
                if (node->left) s.push(node->left);
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