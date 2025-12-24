/*
 * Implementation: 15 - Iterative using std::list as Stack
 * Filename: po_15_list_stack.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 */

#include <iostream>
#include <vector>
#include <list> // Doubly Linked List
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

        // Using List as a Stack (Non-contiguous memory)
        std::list<TreeNode*> listStack;
        listStack.push_back(root);

        while (!listStack.empty()) {
            TreeNode* node = listStack.back();
            listStack.pop_back();

            result.push_back(node->val);

            if (node->left) {
                listStack.push_back(node->left);
            }
            if (node->right) {
                listStack.push_back(node->right);
            }
        }

        // Reverse to get Postorder
        std::reverse(result.begin(), result.end());
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