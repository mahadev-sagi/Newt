#include <iostream>
#include <vector>
#include <fstream>
#include <string> // <--- Added for string handling

using namespace std;

// Node with Parent Pointer
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
Node* tree_successor(Node* p) {
    // 1. If right subtree exists, successor is the leftmost node of right subtree
    Node* h = p->right;
    if (h != nullptr) {
        while (h->left != nullptr)
            h = h->left;
        return h;
    }
    
    // 2. Otherwise, go up until we are the left child of our parent
    Node* y = p->parent;
    while (y != nullptr && p == y->right) {
        p = y;
        y = y->parent;
    }
    return y;
}

void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;

    // 1. Start at the leftmost node (Minimum value)
    Node* curr = root;
    while (curr->left != nullptr) {
        curr = curr->left;
    }

    // 2. Iterate using tree_successor
    while (curr != nullptr) {
        result.push_back(curr->val);
        curr = tree_successor(curr);
    }
}

// --- HARNESS ---
Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    
    if (val < root->val) {
        Node* lchild = insert(root->left, val);
        root->left = lchild;
        lchild->parent = root; // Critical: Set parent pointer
    } else {
        Node* rchild = insert(root->right, val);
        root->right = rchild;
        rchild->parent = root; // Critical: Set parent pointer
    }
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
        vector<int> f = {5,3,7,2,4,6,8}; for(int i:f) root=insert(root,i);
    } else {
        while(file >> num) root = insert(root, num);
        file.close();
    }

    vector<int> result;
    if (root) in_order_traversal(root, result);

    bool passed = true;
    for (size_t i = 0; i < result.size() - 1; ++i) {
        if (result[i] > result[i+1]) { passed = false; break; }
    }
    
    if (passed && !result.empty()) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
