#include <iostream>
#include <vector>
#include <fstream>
#include <cstdio>
#include <cstdlib>
#include <string> 

using namespace std;

struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
void helper(Node* root, vector<int>& res) {
    if (!root) return;
    helper(root->left, res);
    res.push_back(root->val);
    helper(root->right, res);
}

void in_order_traversal(Node* root, vector<int>& result) {
    helper(root, result);
}

// --- VERIFICATION HARNESS ( ---
Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    if (val < root->val) {
        root->left = insert(root->left, val);
        root->left->parent = root;
    } else {
        root->right = insert(root->right, val);
        root->right->parent = root;
    }
    return root;
}

// --- MAIN (Modified for Automation) ---
int main(int argc, char** argv) { // <--- 2. Update function signature
    
    // 3. Logic to pick the file from argument OR default
    string filename = "numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    // 4. Pass the variable 'filename.c_str()' instead of the hardcoded string
    ifstream file(filename.c_str());
    
    int num;
    Node* root = nullptr;
    
    if (!file.is_open()) {
        // Fallback if file is missing
        vector<int> fb = {5, 3, 7, 1, 4, 6, 8};
        for(int x : fb) root = insert(root, x);
    } else {
        int limit = 0;
        while(file >> num && limit++ < 2000) root = insert(root, num);
        file.close();
    }

    vector<int> result;
    if(root) in_order_traversal(root, result);

    bool passed = true;
    for (size_t i = 0; i < result.size() - 1; ++i) {
        if (result[i] > result[i+1]) { passed = false; break; }
    }
    
    if (passed && !result.empty()) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
