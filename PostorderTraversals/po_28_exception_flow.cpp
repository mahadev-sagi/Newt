/*
 * Implementation: 28 - Recursive with Exception Flow
 * Filename: po_28_exception_flow.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Instead of standard returns, the recursive function 'throws' an integer
 * to signal completion to its parent.
 * The parent wraps calls in try-catch blocks to handle the control flow.
 */

#include <iostream>
#include <vector>
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

// Define a specific type for control flow signal
struct TraversalSignal {
    int dummy;
};

class Solution {
public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        std::vector<int> result;
        try {
            traverse(root, result);
        } catch (TraversalSignal) {
            // Catch the final throw from the root node
        }
        return result;
    }

private:
    void traverse(TreeNode* node, std::vector<int>& result) {
        if (node == NULL) {
            return; // Standard return for NULL base case
        }

        // 1. Try to traverse Left
        try {
            traverse(node->left, result);
        } catch (TraversalSignal) {
            // Caught signal that Left child is done
        }

        // 2. Try to traverse Right
        try {
            traverse(node->right, result);
        } catch (TraversalSignal) {
            // Caught signal that Right child is done
        }

        // 3. Visit Node
        result.push_back(node->val);

        // 4. Signal completion to parent via Exception
        TraversalSignal sig;
        throw sig; 
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
