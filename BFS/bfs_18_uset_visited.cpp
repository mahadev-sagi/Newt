#include <iostream>
#include <vector>
#include <queue>
#include <unordered_set>
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
// OD: Hash Set for visited tracking (Preserved from original bfs_18)
void bfs_uset(Node* root, vector<int>& result) {
    if (!root) return;
    
    // OD: Using unordered_set for tracking visited pointers
    unordered_set<Node*> visited;
    
    queue<Node*> q;
    q.push(root);
    visited.insert(root);

    while(!q.empty()) {
        Node* u = q.front();
        q.pop();

        // Record value for Gold Standard output
        result.push_back(u->val);

        // Process tree "neighbors" (Left and Right children)
        Node* neighbors[2] = {u->left, u->right};
        for (int i = 0; i < 2; ++i) {
            Node* v = neighbors[i];
            if (v != nullptr) {
                // OD: Hashing overhead for every check
                if (visited.find(v) == visited.end()) {
                    visited.insert(v);
                    q.push(v);
                }
            }
        }
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
    bfs_uset(root, result);

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}