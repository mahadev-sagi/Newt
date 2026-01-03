#include <iostream>
#include <vector>
#include <queue>
#include <map>
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
// OD: Standard Baseline (STL Queue + Visited tracking) preserved from original bfs_11.
// Adapted to traverse a BST in level-order.
void bfs_baseline(Node* root, vector<int>& result) {
    if (!root) return;

    // OD: Using STL queue and visited tracking as per original bfs_11 structure
    queue<Node*> q;
    map<Node*, bool> visited; 
    
    visited[root] = true;
    q.push(root);

    while(!q.empty()) {
        Node* u = q.front();
        q.pop();

        // Record the value for the Golden Standard output
        result.push_back(u->val);

        // Process tree "neighbors" (Left and Right children)
        Node* neighbors[2] = {u->left, u->right};
        for (int i = 0; i < 2; ++i) {
            Node* v = neighbors[i];
            if (v != nullptr && visited.find(v) == visited.end()) {
                visited[v] = true;
                q.push(v);
            }
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
    // Build BST from the 10k numbers as done in traversals
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_baseline(root, result);

    // 3. Print Actual Output (Matches Golden Standard style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}