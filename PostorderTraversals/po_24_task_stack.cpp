/*
 * Implementation: 24 - Task-Based Stack (Command Pattern)
 * Filename: po_24_task_stack.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Stack contains 'Tasks' (enums) + Node pointers.
 * Interpreter loop processes tasks.
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

enum OpCode { GO_DOWN, EMIT_VAL };

struct Task {
    OpCode op;
    TreeNode* node;
    Task(OpCode o, TreeNode* n) : op(o), node(n) {}
};

class Solution {
public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        std::vector<int> result;
        if (!root) return result;

        std::stack<Task> tasks;
        tasks.push(Task(GO_DOWN, root));

        while (!tasks.empty()) {
            Task t = tasks.top();
            tasks.pop();

            if (t.op == EMIT_VAL) {
                result.push_back(t.node->val);
            } else {
                // To get Postorder (Left, Right, Root), we push in reverse order:
                // 1. Root (EMIT)
                // 2. Right (GO_DOWN)
                // 3. Left (GO_DOWN)
                
                tasks.push(Task(EMIT_VAL, t.node));
                
                if (t.node->right) tasks.push(Task(GO_DOWN, t.node->right));
                if (t.node->left) tasks.push(Task(GO_DOWN, t.node->left));
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