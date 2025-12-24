#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <fstream> 
#include <string>  



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

// --- MAIN (Updated) ---
int main(int argc, char** argv) {
    string filename = "../../numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    ifstream file(filename.c_str());

    int num;
    Node* root = NULL;

    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // Run the traversal (Function prints internally)
    inorder(root);
    printf("\n");

    return 0;
}