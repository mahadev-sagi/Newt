/*
 * Implementation: 08 - Iterative Stack with Explicit State Machine
 * Filename: po_08_iterative_state.cpp
 * Compatibility: C++98 (Safe for Clang 3.4)
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

        // Stack stores pair<Node*, int> where int is the state:
        // State 0: Go Left
        // State 1: Go Right
        // State 2: Visit Node
        std::stack<std::pair<TreeNode*, int> > s;
        s.push(std::make_pair(root, 0));

        while (!s.empty()) {
            TreeNode* node = s.top().first;
            int& state = s.top().second; // Reference to update state in-place

            if (state == 0) {
                // State 0: Prepare to traverse Left
                state = 1; 
                if (node->left) {
                    s.push(std::make_pair(node->left, 0));
                }
            } else if (state == 1) {
                // State 1: Left is done. Prepare to traverse Right.
                state = 2;
                if (node->right) {
                    s.push(std::make_pair(node->right, 0));
                }
            } else {
                // State 2: Right is done. Visit Node and Pop.
                result.push_back(node->val);
                s.pop();
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
