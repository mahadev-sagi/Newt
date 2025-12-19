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
    if (!root) return;
    Node* curr = root;
    Node* prev = nullptr;

    while (curr != nullptr) {
        if (prev == curr->parent) { // Down
            if (curr->left) {
                prev = curr;
                curr = curr->left;
                continue;
            } else {
                prev = nullptr; 
            }
        }
        if (prev == curr->left) { // Up from left
            result.push_back(curr->val);
            if (curr->right) {
                prev = curr;
                curr = curr->right;
                continue;
            } else {
                prev = nullptr;
            }
        }
        if (prev == curr->right) { // Up from right
            prev = curr;
            curr = curr->parent;
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

// --- MAIN ---
int main(int argc, char** argv) {
    string filename = "numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    ifstream file(filename.c_str());
    int num;
    Node* root = nullptr;
    
    if (!file.is_open()) {
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
