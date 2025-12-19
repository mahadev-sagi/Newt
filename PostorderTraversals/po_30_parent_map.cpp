/*
 * Implementation: 30 - Stackless Iterative (Parent Map Backtracking)
 * Filename: po_30_parent_map.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * 1. Pre-process tree to build a 'parent' map (simulates parent pointers).
 * 2. Traverse using pointers 'curr' and 'lastVisited'.
 * 3. Navigates up/down the tree edges without any stack data structure.
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
        if (root == NULL) return result;

        // 1. Build Parent Map (Topology)
        // This allows us to traverse UP without a stack
        std::map<TreeNode*, TreeNode*> parentMap;
        buildParentMap(root, NULL, parentMap);

        TreeNode* curr = root;
        TreeNode* lastVisited = NULL;

        // 2. Stackless Traversal Logic
        while (curr != NULL) {
            // Determine if we are traversing DOWN or UP
            bool movingDown = (lastVisited != curr->left) && (lastVisited != curr->right) && (lastVisited != curr);
            bool movingUpFromLeft = (lastVisited == curr->left);
            
            if (movingDown) {
                // Try to go Left first
                if (curr->left) {
                    curr = curr->left; // Move down-left
                } else if (curr->right) {
                    curr = curr->right; // No left, try down-right
                } else {
                    // Leaf node: Visit and move back up
                    result.push_back(curr->val);
                    lastVisited = curr;
                    curr = parentMap[curr];
                }
            } 
            else if (movingUpFromLeft) {
                // Returned from Left child, try Right
                if (curr->right) {
                    curr = curr->right; // Move down-right
                } else {
                    // No right child: Visit curr and move back up
                    result.push_back(curr->val);
                    lastVisited = curr;
                    curr = parentMap[curr];
                }
            } 
            else {
                // Returned from Right child (or visited Leaf logic fall-through)
                // Subtree done: Visit curr and move back up
                result.push_back(curr->val);
                lastVisited = curr;
                curr = parentMap[curr];
            }
        }
        
        return result;
    }

private:
    void buildParentMap(TreeNode* node, TreeNode* parent, std::map<TreeNode*, TreeNode*>& map) {
        if (node == NULL) return;
        map[node] = parent;
        buildParentMap(node->left, node, map);
        buildParentMap(node->right, node, map);
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
