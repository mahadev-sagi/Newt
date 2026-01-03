#include <iostream>
#include <vector>
#include <queue>
#include <fstream>
#include <string>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// Adapted from the grid-based BFS to perform Level-Order Traversal on a BST
void bfs_level_order(Node* root, vector<int>& result) {
    if (!root) return;

    // OD: Using implicit neighbors (node->left, node->right) instead of an adjacency list
    queue<Node*> q;

    q.push(root);

    while(!q.empty()) {
        Node* u = q.front();
        q.pop();

        // Record value for Gold Standard output
        result.push_back(u->val);

        // Process children as "implicit neighbors"
        if (u->left) {
            q.push(u->left);
        }
        if (u->right) {
            q.push(u->right);
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
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_level_order(root, result);

    // 3. Print Actual Output (Matches Traversal style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}