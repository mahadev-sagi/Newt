/*
 * Implementation: 11 - Iterative Reverse (Linked List / Deque push_front)
 * Filename: po_11_linked_list_reverse.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 */

#include <iostream>
#include <vector>
#include <deque> // Efficient push_front
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

class Solution {
public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        if (root == NULL) return std::vector<int>();

        // OD: Using deque to push_front (O(1)) avoids the explicit reverse step
        // Traversal Order: Root -> Right -> Left
        // List Order: Left <- Right <- Root
        std::deque<int> d;
        std::stack<TreeNode*> s;
        s.push(root);

        while (!s.empty()) {
            TreeNode* node = s.top();
            s.pop();

            // Insert at HEAD of the list
            d.push_front(node->val);

            // Push Left first so it is processed LAST (and ends up at FRONT of result)
            // Wait: We want Root -> Right -> Left traversal.
            // Stack is LIFO.
            // Push Left: Top is Left. Pop Left. Add Left to front.
            // Push Right: Top is Right. Pop Right. Add Right to front.
            // Result: Left, Right, Root. Correct.
            
            if (node->left) {
                s.push(node->left);
            }
            if (node->right) {
                s.push(node->right);
            }
        }
        
        // Convert deque to vector for standard return type
        return std::vector<int>(d.begin(), d.end());
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
