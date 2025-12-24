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

// --- IMPLEMENTATION ---
// OD: Destroys the tree during traversal (Morris-like but simpler/destructive)
void in_order_traversal(Node* root, vector<int>& result) {
    Node* curr = root;
    
    while (curr != nullptr) {
        if (curr->left == nullptr) {
            // No left child: Visit and move right
            result.push_back(curr->val);
            curr = curr->right;
        } else {
            // Rotate Right: Make curr the right child of its own left child
            Node* prev = curr->left;
            curr->left = prev->right; // Adopt the orphan
            prev->right = curr;       // Rotate
            curr = prev;              // Move up to the new root of this subtree
        }
    }
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