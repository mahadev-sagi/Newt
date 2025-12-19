/*
 * Implementation: 13 - Iterative Simulated Stack Frame (Program Counter)
 * Filename: po_13_simulated_pc.cpp
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

struct StackFrame {
    TreeNode* node;
    int pc; // 0 = Go Left, 1 = Go Right, 2 = Visit
    StackFrame(TreeNode* n) : node(n), pc(0) {}
};

class Solution {
public:
    std::vector<int> postorderTraversal(TreeNode* root) {
        std::vector<int> result;
        if (root == NULL) return result;

        std::stack<StackFrame> st;
        st.push(StackFrame(root));

        while (!st.empty()) {
            // Reference the top frame so we can modify its PC
            StackFrame& frame = st.top();

            if (frame.pc == 0) {
                // Instruction 0: Process Left
                frame.pc = 1; // Increment PC for when we return
                if (frame.node->left) {
                    st.push(StackFrame(frame.node->left));
                }
            }
            else if (frame.pc == 1) {
                // Instruction 1: Process Right
                frame.pc = 2; // Increment PC for when we return
                if (frame.node->right) {
                    st.push(StackFrame(frame.node->right));
                }
            }
            else if (frame.pc == 2) {
                // Instruction 2: Visit Node and Return
                result.push_back(frame.node->val);
                st.pop();
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
