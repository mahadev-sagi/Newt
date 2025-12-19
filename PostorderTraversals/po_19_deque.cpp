/*
 * Implementation: 19 - Iterative using std::deque
 * Filename: po_19_deque.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Uses the 'Reverse Preorder' strategy.
 * Explicitly uses std::deque to store nodes.
 * Deque memory layout (chunked arrays) offers unique fault sensitivity.
 */

#include <iostream>
#include <vector>
#include <deque> // Explicit Deque
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

        // Deque: Map of pointers to fixed-size blocks
        std::deque<TreeNode*> dq;
        dq.push_back(root);

        while (!dq.empty()) {
            TreeNode* node = dq.back();
            dq.pop_back();

            result.push_back(node->val);

            if (node->left) {
                dq.push_back(node->left);
            }
            if (node->right) {
                dq.push_back(node->right);
            }
        }

        std::reverse(result.begin(), result.end());
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
