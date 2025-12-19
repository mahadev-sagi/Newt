#include <iostream>
#include <vector>
#include <fstream>
#include <string> // <--- Added for string handling

using namespace std;

struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    Node* cur = root;

    // Find the leftmost node
    while (cur && cur->left) {
        cur = cur->left;
    }

    while (cur) {
        result.push_back(cur->val); // Output the data

        // Traverse the right subtree
        if (cur->right) {
            cur = cur->right;
            while (cur->left) {
                cur = cur->left;
            }
        } else {
            // Move up the tree
            // OD: Explicitly checking parent relationships to find successor
            while (cur->parent && cur == cur->parent->right) {
                cur = cur->parent;
            }
            cur = cur->parent;
        }
    }
}

// --- HARNESS ---
// Critical: Insert must set parent pointers for this algorithm to work!
Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    if (val < root->val) {
        Node* l = insert(root->left, val);
        root->left = l;
        l->parent = root; // SET PARENT
    } else {
        Node* r = insert(root->right, val);
        root->right = r;
        r->parent = root; // SET PARENT
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

    // 2. Open the file using the variable
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
    if(root) in_order_traversal(root, result);

    bool passed = true;
    for (size_t i = 0; i < result.size() - 1; ++i) {
        if (result[i] > result[i+1]) { passed = false; break; }
    }
    
    if (passed && !result.empty()) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
