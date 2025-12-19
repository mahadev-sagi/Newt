#include <iostream>
#include <cstdio>
#include <cstdlib>

// Removed <vector> to prevent LLFI crashes
// #include <vector> 

using namespace std;

struct Node {
    int val;
    Node* left;
    Node* right;
    
    // Explicitly initialize pointers to NULL for older C++ compatibility
    Node(int v) : val(v), left(NULL), right(NULL) {}
};

// Standard BST Insert Function
Node* insert(Node* root, int key) {
    if (root == NULL) {
        return new Node(key);
    }
    if (key < root->val) {
        root->left = insert(root->left, key);
    } else {
        root->right = insert(root->right, key);
    }
    return root;
}

// Inorder Traversal: Implicit Stack (Recursion)
void inorder(Node* root) {
    if (root == NULL) return;
    
    inorder(root->left);
    
    // Print to stderr or stdout
    // Using printf is often safer for FI than cout
    printf("%d ", root->val);
    
    inorder(root->right);
}

int main(int argc, char* argv[]) {
    Node* root = NULL;

    // --- CHANGED: Use simple array instead of vector ---
    // This prevents "basic_string::_M_construct" errors in LLFI
    int fb[] = {5, 3, 7, 1, 4, 6, 8};
    int n = 7; // The fixed size of the array

    // Standard for loop instead of range-based for loop
    for(int i = 0; i < n; i++) {
        root = insert(root, fb[i]);
    }

    // Run the traversal
    inorder(root);
    printf("\n");

    return 0;
}
