#include <iostream>
#include <vector>
#include <queue>
#include <fstream>
#include <string>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
// Matches Node structure in in_01_recursive.cpp
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Preserves the structure of using real pointers for traversal as per original bfs_15.
void bfs_pointer(Node* start, vector<int>& result) {
    if (!start) return;

    // OD: Using a queue of Node* to traverse pointers
    queue<Node*> q;
    q.push(start);
    
    while (!q.empty()) {
        Node* u = q.front();
        q.pop();

        // Record value for Gold Standard output
        result.push_back(u->val);

        // OD: Traversing node pointers (neighbors in the tree)
        if (u->left) {
            q.push(u->left);
        }
        if (u->right) {
            q.push(u->right);
        }
    }
}

// --- TREE BUILDER ---
// Standard BST insertion logic as seen in in_01_recursive.cpp
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
    // Build BST from the 10k numbers
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_pointer(root, result);

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}