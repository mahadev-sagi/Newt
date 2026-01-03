#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>
#include <map>
#include <string>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Preserves the unique Two-Phase processing structure from the original bfs_07.
void bfs_anp(Node* root, const vector<Node*>& all_nodes, map<Node*, int>& node_to_idx, vector<int>& result) {
    if (!root) return;
    int n = all_nodes.size();
    
    // OD: Using bitmask vectors as per the original implementation structure
    vector<uint64_t> visited(n, 0);
    vector<uint64_t> frontier(n, 0);
    vector<uint64_t> next_frontier(n, 0); 

    uint64_t mask = 1;
    int root_idx = node_to_idx[root];
    visited[root_idx] |= mask;
    frontier[root_idx] |= mask;

    bool active = true;

    while (active) {
        active = false;

        // PHASE 1: Blind Aggregation (Write to next_frontier)
        // OD: No checks here, just marking potential next nodes.
        for (int u_idx = 0; u_idx < n; ++u_idx) {
            if (frontier[u_idx] & mask) {
                Node* u = all_nodes[u_idx];
                if (u->left) next_frontier[node_to_idx[u->left]] |= mask;
                if (u->right) next_frontier[node_to_idx[u->right]] |= mask;
            }
        }

        // PHASE 2: Process & Filter
        // OD: Only now do we check visited status and record the output.
        for (int u_idx = 0; u_idx < n; ++u_idx) {
            if ((next_frontier[u_idx] & mask) && !(visited[u_idx] & mask)) {
                visited[u_idx] |= mask;
                result.push_back(all_nodes[u_idx]->val);
                active = true;
            } else {
                next_frontier[u_idx] = 0; 
            }
        }
        
        // Swap buffers
        frontier = next_frontier;
        fill(next_frontier.begin(), next_frontier.end(), 0);
    }
}

// --- TREE BUILDER ---
Node* insert(Node* root, int val, vector<Node*>& all_nodes, map<Node*, int>& node_to_idx) {
    if (!root) {
        Node* newNode = new Node(val);
        node_to_idx[newNode] = all_nodes.size();
        all_nodes.push_back(newNode);
        return newNode;
    }
    if (val < root->val) {
        root->left = insert(root->left, val, all_nodes, node_to_idx);
        root->left->parent = root;
    } else {
        root->right = insert(root->right, val, all_nodes, node_to_idx);
        root->right->parent = root;
    }
    return root;
}

int main(int argc, char** argv) {
    // 1. Setup Tree and Metadata from numbers.txt
    string filename = "numbers.txt"; 
    if (argc > 1) filename = argv[1];

    ifstream file(filename.c_str());
    if (!file.is_open()) {
        cerr << "Error: Could not open " << filename << endl;
        return 1;
    }

    int num;
    Node* root = nullptr;
    vector<Node*> all_nodes;
    map<Node*, int> node_to_idx;

    // Build BST from the 10k numbers
    while(file >> num) {
        root = insert(root, num, all_nodes, node_to_idx);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    // Add the root manually to the result as Phase 2 only catches children
    if (root) result.push_back(root->val); 
    bfs_anp(root, all_nodes, node_to_idx, result);

    // 3. Print Actual Output for Gold Standard Comparison
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}