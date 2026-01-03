#include <iostream>
#include <vector>
#include <queue>
#include <map>
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
// OD: Topological Sort BFS (Kahn's Algorithm) preserved from original bfs_23.cpp.
// This requires calculating and modifying in-degrees for the tree nodes.
void bfs_kahn(Node* root, const vector<Node*>& all_nodes, vector<int>& result) {
    if (!root) return;

    // OD: 1. Calculate In-Degrees (Directed from parent to children)
    map<Node*, int> indegree;
    for (Node* n : all_nodes) indegree[n] = 0;

    for (Node* u : all_nodes) {
        if (u->left) indegree[u->left]++;
        if (u->right) indegree[u->right]++;
    }

    // OD: 2. Initialize Queue with 0-indegree nodes (in a tree, this is the root)
    queue<Node*> q;
    for (Node* n : all_nodes) {
        if (indegree[n] == 0) q.push(n);
    }

    while (!q.empty()) {
        Node* u = q.front();
        q.pop();
        
        // Record the value for the Golden Standard output
        result.push_back(u->val);

        // Process "neighbors" (children)
        Node* neighbors[2] = {u->left, u->right};
        for (int i = 0; i < 2; i++) {
            Node* v = neighbors[i];
            if (v != nullptr) {
                // OD: Decrement and Check Logic (Kahn's signature)
                indegree[v]--;
                if (indegree[v] == 0) {
                    q.push(v);
                }
            }
        }
    }
}

// --- TREE BUILDER ---
// Standard BST insertion logic from in_01_recursive.cpp
Node* insert(Node* root, int val, vector<Node*>& all_nodes) {
    if (!root) {
        Node* newNode = new Node(val);
        all_nodes.push_back(newNode);
        return newNode;
    }
    if (val < root->val) {
        root->left = insert(root->left, val, all_nodes);
        root->left->parent = root;
    } else {
        root->right = insert(root->right, val, all_nodes);
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
    vector<Node*> all_nodes; // Collection of all nodes for in-degree calculation
    // Build BST from the 10k numbers dataset
    while(file >> num) {
        root = insert(root, num, all_nodes);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_kahn(root, all_nodes, result);

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}