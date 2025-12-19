/*
 * Implementation: 17 - Polymorphic Visitor Pattern
 * Filename: po_17_visitor.cpp
 * Compatibility: C++98 (Clang 3.4 Safe)
 * Logic:
 * Defines an abstract base class 'NodeVisitor' with a pure virtual function.
 * The traversal logic delegates the 'Visit' step to this virtual function.
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

// Abstract Base Class (Interface)
class NodeVisitor {
public:
    virtual ~NodeVisitor() {}
    virtual void visit(int val) = 0;
};

// HELPER: Concrete Visitor that saves to vector
class VectorVisitor : public NodeVisitor {
    std::vector<int>& res;
public:
    VectorVisitor(std::vector<int>& r) : res(r) {}
    void visit(int val) {
        res.push_back(val);
    }
};

class Solution {
public:
    // Original Logic (Preserved)
    void postorderTraversal(TreeNode* root, NodeVisitor& visitor) {
        if (root == NULL) return;
        postorderTraversal(root->left, visitor);
        postorderTraversal(root->right, visitor);
        visitor.visit(root->val); // Virtual Call
    }

    // ADAPTER: Matches the Test Harness signature
    std::vector<int> postorderTraversal(TreeNode* root) {
        std::vector<int> result;
        VectorVisitor adapter(result);
        postorderTraversal(root, adapter);
        return result;
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
