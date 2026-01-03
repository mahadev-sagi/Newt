#include <iostream>
#include <vector>
#include <queue>
#include <fstream>
#include <string>
#include <map>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
// Matches Node structure in in_01_recursive.cpp
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Two queues, two visited maps (for pointers)
// This maintains the original bidirectional structure while using the tree data.
void bfs_bidirectional(Node* start, Node* target, vector<int>& result) {
    if (!start || !target) return;
    if (start == target) {
        result.push_back(start->val);
        return;
    }

    // Maps to track visited state and distance from start and target
    map<Node*, int> dist_s;
    map<Node*, int> dist_t;
    queue<Node*> q_s;
    queue<Node*> q_t;

    q_s.push(start); dist_s[start] = 0;
    q_t.push(target); dist_t[target] = 0;

    while (!q_s.empty() && !q_t.empty()) {
        // Forward Step (Exploring down from root)
        Node* u = q_s.front(); q_s.pop();
        result.push_back(u->val);

        // In a tree, neighbors for forward search are children
        Node* neighbors_s[] = {u->left, u->right};
        for (Node* v : neighbors_s) {
            if (v && dist_s.find(v) == dist_s.end()) {
                dist_s[v] = dist_s[u] + 1;
                q_s.push(v);
                // Intersection Check: search meets
                if (dist_t.find(v) != dist_t.end()) return; 
            }
        }

        // Backward Step (Exploring up from target)
        Node* u2 = q_t.front(); q_t.pop();
        result.push_back(u2->val);

        // In a tree, neighbors for backward search are parent and children
        vector<Node*> neighbors_t;
        if (u2->parent) neighbors_t.push_back(u2->parent);
        if (u2->left) neighbors_t.push_back(u2->left);
        if (u2->right) neighbors_t.push_back(u2->right);

        for (Node* v : neighbors_t) {
            if (v && dist_t.find(v) == dist_t.end()) {
                dist_t[v] = dist_t[u2] + 1;
                q_t.push(v);
                // Intersection Check: search meets
                if (dist_s.find(v) != dist_s.end()) return;
            }
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

// Helper to find a node by value for the target
Node* find_node(Node* r, int v) {
    if (!r || r->val == v) return r;
    if (v < r->val) return find_node(r->left, v);
    return find_node(r->right, v);
}

int main(int argc, char** argv) {
    // 1. Setup Tree from numbers.txt
    string filename = "../../numbers.txt"; 
    if (argc > 1) filename = argv[1];

    ifstream file(filename.c_str());
    if (!file.is_open()) {
        cerr << "Error: Could not open " << filename << endl;
        return 1;
    }

    int num;
    Node* root = nullptr;
    int last_num = -1;
    
    // Build BST from the 10k numbers dataset
    while(file >> num) {
        root = insert(root, num);
        last_num = num; // Track the last number to use as a search target
    }
    file.close();

    // 2. Run Implementation
    // We search from the root to the last value inserted
    Node* target_node = find_node(root, last_num);
    
    vector<int> result;
    if (root && target_node) {
        bfs_bidirectional(root, target_node, result);
    }

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}