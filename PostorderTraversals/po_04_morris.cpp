/*
 * Implementation: 04 - Morris Traversal (Threaded Binary Tree)
 * Filename: po_04_morris.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Source: liuyubobobo/Play-with-Algorithms (GitHub)
 */

#include <iostream>
#include <vector>
#include <algorithm>
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
        std::vector<int> res;
        TreeNode* cur = root;
        
        // Morris Traversal Logic (Reverse Preorder: Root->Right->Left)
        while(cur != NULL){
            if(cur->right == NULL){
                res.push_back(cur->val);
                cur = cur->left;
            }
            else{
                TreeNode* prev = cur->right;
                while(prev->left != NULL && prev->left != cur)
                    prev = prev->left;

                if(prev->left == NULL){
                    res.push_back(cur->val);
                    prev->left = cur;
                    cur = cur->right;
                }
                else{
                    prev->left = NULL;
                    cur = cur->left;
                }
            }
        }
        
        // Reverse to get Postorder (Left->Right->Root)
        std::reverse(res.begin(), res.end());
        return res;
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