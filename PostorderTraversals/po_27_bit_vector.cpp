/*
 * Implementation: 27 - Iterative with Bit-Vector (Bitwise Logic)
 * Filename: po_27_bit_vector.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Uses a parallel stack approach.
 * 'visitStack' is a vector<bool>, which uses 1 bit per element.
 * We must use bitwise operations to check if a node is ready to visit.
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

class Solution {
public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        std::vector<int> result;
        if (root == NULL) return result;

        std::vector<TreeNode*> nodeStack;
        // vector<bool> is a specialization that uses 1 bit per value
        std::vector<bool> visitStack;

        nodeStack.push_back(root);
        visitStack.push_back(false); // false = traverse children

        while (!nodeStack.empty()) {
            TreeNode* node = nodeStack.back();
            nodeStack.pop_back();

            // Accessing vector<bool> involves bit-masks
            bool visited = visitStack.back();
            visitStack.pop_back();

            if (node == NULL) continue;

            if (visited) {
                // Bit was 1: Visit Node
                result.push_back(node->val);
            } else {
                // Bit was 0: Push back as 1, process children
                nodeStack.push_back(node);
                visitStack.push_back(true);

                // Push Right (with bit 0)
                nodeStack.push_back(node->right);
                visitStack.push_back(false);

                // Push Left (with bit 0)
                nodeStack.push_back(node->left);
                visitStack.push_back(false);
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
