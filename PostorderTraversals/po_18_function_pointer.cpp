/*
 * Implementation: 18 - C-Style Function Pointers (Callback)
 * Filename: po_18_function_pointer.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * The traversal function accepts a raw function pointer 'void (*callback)(int)'.
 * The callback is invoked for every node visit.
 */

#include <iostream>
#include <vector>
#include <cstdio>
#include <fstream>
#include <algorithm>
#include <string>
#include <cstdlib>

using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

// Define a function pointer type
typedef void (*VisitCallback)(int);

// Global buffer for the callback to write to
static std::vector<int> global_buffer;

// Callback function
static void accumulationCallback(int val) {
    global_buffer.push_back(val);
}

class Solution {
public:
    // Original Logic (Preserved)
    void postorderTraversal(TreeNode* root, VisitCallback callback) {
        if (root == NULL) return;
        postorderTraversal(root->left, callback);
        postorderTraversal(root->right, callback);
        callback(root->val); // Indirect Jump
    }

    // ADAPTER: Matches the Test Harness signature
    std::vector<int> postorderTraversal(TreeNode* root) {
        global_buffer.clear(); 
        postorderTraversal(root, accumulationCallback);
        return global_buffer;
    }
};

// --- HARNESS ---
TreeNode* insert(TreeNode* root, int val) {
    if (!root) return new TreeNode(val);
    if (val < root->val) root->left = insert(root->left, val);
    else root->right = insert(root->right, val);
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
        while (file >> num) root = insert(root, num);
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
