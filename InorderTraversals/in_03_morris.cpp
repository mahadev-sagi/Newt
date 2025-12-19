#include <iostream>
#include <vector>
#include <fstream>
#include <string> 

using namespace std;

struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
void in_order_traversal(Node* root, vector<int>& result) {
    Node* curr = root;
    while (curr != nullptr) {
        if (curr->left == nullptr) {
            result.push_back(curr->val);
            curr = curr->right;
        } else {
            Node* pre = curr->left;
            while (pre->right != nullptr && pre->right != curr)
                pre = pre->right;

            if (pre->right == nullptr) {
                pre->right = curr;
                curr = curr->left;
            } else {
                pre->right = nullptr;
                result.push_back(curr->val);
                curr = curr->right;
            }
        }
    }
}

// --- HARNESS ---
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
        // Fallback default
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
