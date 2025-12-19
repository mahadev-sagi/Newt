/*
 * Implementation: 24 - Iterative Explicit Continuation (Task Stack)
 * Filename: po_24_task_stack.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Defines a 'Task' struct with an Action type (TRAVERSE or VISIT).
 * Instead of recursion, we push explicit tasks to the stack.
 * Order: Push VISIT(root), then TRAVERSE(right), then TRAVERSE(left).
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

enum Action {
    TRAVERSE, // Need to process children
    VISIT     // Ready to print value
};

struct Task {
    TreeNode* node;
    Action action;
    Task(TreeNode* n, Action a) : node(n), action(a) {}
};

class Solution {
public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        std::vector<int> result;
        if (root == NULL) return result;

        std::stack<Task> taskStack;
        // Initial Task: Traverse the root
        taskStack.push(Task(root, TRAVERSE));

        while (!taskStack.empty()) {
            Task t = taskStack.top();
            taskStack.pop();

            if (t.node == NULL) continue;

            if (t.action == VISIT) {
                // Action is VISIT: Just store the value
                result.push_back(t.node->val);
            } else {
                // Action is TRAVERSE: Schedule future tasks
                // Postorder is Left -> Right -> Root.
                // Stack is LIFO, so we push in REVERSE order:
                
                // 1. Push VISIT (Root) - Will be popped last
                taskStack.push(Task(t.node, VISIT));

                // 2. Push TRAVERSE (Right)
                taskStack.push(Task(t.node->right, TRAVERSE));

                // 3. Push TRAVERSE (Left) - Will be popped first
                taskStack.push(Task(t.node->left, TRAVERSE));
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
