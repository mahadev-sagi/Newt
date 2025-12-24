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

// --- TREE BUILDER ---
Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    if (val < root->val) root->left = insert(root->left, val);
    else root->right = insert(root->right, val);
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
    Node* root = nullptr;
    
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    vector<int> result;
    in_order_traversal(root, result);

    // Print Actual Output
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}