#include <iostream>
#include <vector>
#include <stack>
#include <fstream>
#include <string> 

using namespace std;

struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// --- IMPLEMENTATION ---
const int THRESHOLD = 5;

void iterative_part(Node* root, vector<int>& result) {
    stack<Node*> s;
    Node* curr = root;
    while (curr || !s.empty()) {
        while (curr) {
            s.push(curr);
            curr = curr->left;
        }
        curr = s.top(); s.pop();
        result.push_back(curr->val);
        curr = curr->right;
    }
}

void recursive_part(Node* root, vector<int>& result, int depth) {
    if (!root) return;
    
    if (depth >= THRESHOLD) {
        // Switch to Iterative
        iterative_part(root, result);
        return;
    }

    // Keep recursing
    // Note: Standard recursive logic needs care to not double-process if we switch.
    // Correct Hybrid Logic:
    // If we are below threshold, do standard recursion steps.
    // If we hit threshold, call iterative on that SUBTREE.
    
    if (depth < THRESHOLD) {
        recursive_part(root->left, result, depth + 1);
        result.push_back(root->val);
        recursive_part(root->right, result, depth + 1);
    }
}

void in_order_traversal(Node* root, vector<int>& result) {
    recursive_part(root, result, 0);
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
