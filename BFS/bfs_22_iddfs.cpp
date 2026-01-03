#include <iostream>
#include <vector>
#include <fstream>
#include <string>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
// Structure from in_01_recursive.cpp
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Depth-Limited Search (Recursive) preserved from original bfs_22.
// This function visits nodes at exactly the specified 'limit' depth.
void dls(Node* u, int limit, vector<int>& result) {
    if (!u) return;
    
    // When we reach the limit, we've reached the current level's nodes
    if (limit == 0) {
        result.push_back(u->val);
        return;
    }

    // Recurse to children with a reduced limit
    dls(u->left, limit - 1, result);
    dls(u->right, limit - 1, result);
}

// OD: Iterative Deepening (Simulates BFS layers using increasing Depth limits)
// Preserved from original bfs_22.cpp.
void iddfs_traversal(Node* root, vector<int>& result) {
    if (!root) return;

    // We iterate through depths starting from 0 (the root level).
    // This produces a Level-Order sequence using DFS-based components.
    int depth = 0;
    while (true) {
        size_t size_before = result.size();
        
        // OD: Call Depth-Limited Search for the current layer
        dls(root, depth, result);
        
        // If no new nodes were added at this depth, the traversal is complete
        if (result.size() == size_before) {
            break;
        }
        depth++;
    }
}

// --- TREE BUILDER ---
// Standard BST insertion logic from in_01_recursive.cpp
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
    // 1. Setup Tree from numbers.txt
    string filename = "numbers.txt"; 
    if (argc > 1) filename = argv[1];

    ifstream file(filename.c_str());
    if (!file.is_open()) {
        cerr << "Error: Could not open " << filename << endl;
        return 1;
    }

    int num;
    Node* root = nullptr;
    // Build BST from the 10k numbers dataset
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    iddfs_traversal(root, result);

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}