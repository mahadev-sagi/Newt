/*
 * Implementation: 23 - Tagged Pointer Simulation (Union/Struct)
 * Filename: po_23_tagged_pointer.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Instead of std::pair, we wrap the pointer in a struct with a 'tag'.
 * This mimics low-level tagged pointer optimization.
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

struct TaggedNode {
    TreeNode* node;
    bool isVisited; // The "Tag"
};

class Solution {
public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        std::vector<int> result;
        if (!root) return result;

        std::stack<TaggedNode> s;
        
        TaggedNode rootTagged;
        rootTagged.node = root;
        rootTagged.isVisited = false;
        
        s.push(rootTagged);

        while (!s.empty()) {
            TaggedNode current = s.top();
            s.pop();

            if (current.isVisited) {
                result.push_back(current.node->val);
            } else {
                // Re-push self as visited
                current.isVisited = true;
                s.push(current);

                // Push Right
                if (current.node->right) {
                    TaggedNode r;
                    r.node = current.node->right;
                    r.isVisited = false;
                    s.push(r);
                }

                // Push Left
                if (current.node->left) {
                    TaggedNode l;
                    l.node = current.node->left;
                    l.isVisited = false;
                    s.push(l);
                }
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