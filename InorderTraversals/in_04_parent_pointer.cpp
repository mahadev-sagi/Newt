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

// --- TREE BUILDER ---
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
    if(root) in_order_traversal(root, result);

    // Print Actual Output
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}
