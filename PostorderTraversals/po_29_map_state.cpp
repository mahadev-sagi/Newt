/*
 * Implementation: 29 - Iterative with Map State (External Lookup)
 * Filename: po_29_map_state.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Uses a std::map<TreeNode*, int> to track the progress of each node.
 * State 0: Push Left.
 * State 1: Push Right.
 * State 2: Visit.
 * Unlike stack-based state, this persists state in the heap.
 */

#include <iostream>
#include <vector>
#include <stack>
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

        std::stack<TreeNode*> st;
        st.push(root);

        // External State Map
        // Key: Node Pointer, Value: State (0, 1, 2)
        std::map<TreeNode*, int> stateMap;

        while (!st.empty()) {
            TreeNode* node = st.top();
            
            // Access map (O(log N) lookup)
            int& state = stateMap[node]; // Default constructs to 0 if not found

            if (state == 0) {
                // State 0: Try to go Left
                state = 1; // Update state in map
                if (node->left) {
                    st.push(node->left);
                }
            }
            else if (state == 1) {
                // State 1: Try to go Right
                state = 2; // Update state in map
                if (node->right) {
                    st.push(node->right);
                }
            }
            else {
                // State 2: Visit
                result.push_back(node->val);
                st.pop();
                
                // Optional: Remove from map to save memory (clean up)
                stateMap.erase(node);
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
