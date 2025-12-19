#include <iostream>
#include <vector>
#include <fstream>
#include <string> 

using namespace std;

struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// --- IMPLEMENTATION (Source: pezy/LeetCode) ---
class Solution {
private:
    // OD: Result is stored as PRIVATE MEMBER STATE
    // This persists across recursive calls without being passed as an argument.
    vector<int> result;
    
    void helper(Node* root) {
        if (root) {
            helper(root->left);
            result.push_back(root->val);
            helper(root->right);
        }
    }
public:
    vector<int> inorderTraversal(Node* root) {
        result.clear(); // Important: clear state before running
        helper(root);
        return result;
    }
};

// Wrapper for Harness
void in_order_traversal(Node* root, vector<int>& result) {
    Solution sol;
    result = sol.inorderTraversal(root);
}

// --- HARNESS ---
Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    if (val < root->val) root->left = insert(root->left, val);
    else root->right = insert(root->right, val);
    return root;
}

// --- MAIN ---
int main(int argc, char** argv) {
    // 1. Logic to pick the file from argument OR default
    string filename = "numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    // 2. Open file
    ifstream file(filename.c_str());
    int num;
    Node* root = nullptr;
    
    if (!file.is_open()) {
        vector<int> f = {5,3,7}; for(int i:f) root=insert(root,i);
    } else {
        while(file >> num) root = insert(root, num);
        file.close();
    }

    vector<int> result;
    in_order_traversal(root, result);

    bool passed = true;
    for (size_t i = 0; i < result.size() - 1; ++i) {
        if (result[i] > result[i+1]) { passed = false; break; }
    }
    
    if (passed && !result.empty()) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
