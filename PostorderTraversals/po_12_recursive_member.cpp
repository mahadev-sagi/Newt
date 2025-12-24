/*
 * Implementation: 12 - Custom Iterator Pattern
 * Filename: po_12_recursive_member.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
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

// OD: Encapsulates traversal state in a class
class PostOrderIterator {
private:
    std::stack<TreeNode*> s;
    TreeNode* lastVisited;
    TreeNode* current;

public:
    PostOrderIterator(TreeNode* root) {
        lastVisited = NULL;
        current = root;
    }

    bool hasNext() {
        return !s.empty() || current != NULL;
    }

    int next() {
        while (current != NULL || !s.empty()) {
            if (current != NULL) {
                s.push(current);
                current = current->left;
            } else {
                TreeNode* peekNode = s.top();
                if (peekNode->right != NULL && lastVisited != peekNode->right) {
                    current = peekNode->right;
                } else {
                    int val = peekNode->val;
                    lastVisited = peekNode;
                    s.pop();
                    return val;
                }
            }
        }
        return -1; // Should not reach here if hasNext checked
    }
};

class Solution {
public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        std::vector<int> result;
        PostOrderIterator it(root);
        while (it.hasNext()) {
            result.push_back(it.next());
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