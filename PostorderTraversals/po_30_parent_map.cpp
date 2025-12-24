/*
 * Implementation: 30 - Iterative with Parent Map (No Stack)
 * Filename: po_30_parent_map.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Simulates parent pointers using a Map. Allows traversing up without recursion/stack.
 */

#include <iostream>
#include <vector>
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

        std::map<TreeNode*, TreeNode*> parentMap;
        parentMap[root] = NULL;
        
        TreeNode* curr = root;
        TreeNode* prev = NULL;

        while (curr != NULL) {
            // Case 1: Downward
            if (prev == parentMap[curr]) { // Came from parent
                if (curr->left) {
                    parentMap[curr->left] = curr;
                    prev = curr;
                    curr = curr->left;
                } else if (curr->right) {
                    parentMap[curr->right] = curr;
                    prev = curr;
                    curr = curr->right;
                } else {
                    // Leaf
                    result.push_back(curr->val);
                    prev = curr;
                    curr = parentMap[curr];
                }
            }
            // Case 2: Up from Left
            else if (curr->left == prev) {
                if (curr->right) {
                    parentMap[curr->right] = curr;
                    prev = curr;
                    curr = curr->right;
                } else {
                    result.push_back(curr->val);
                    prev = curr;
                    curr = parentMap[curr];
                }
            }
            // Case 3: Up from Right
            else if (curr->right == prev) {
                result.push_back(curr->val);
                prev = curr;
                curr = parentMap[curr];
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