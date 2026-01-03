#include <iostream>
#include <vector>
#include <fstream>
#include <string>
#include <algorithm>
#include <map>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Uses bitmasks (uint64_t) and a node-vector loop to track visited status
// This preserves the specific "bit parallel" structure from the original bfs_06.
void bfs_bit_parallel(Node* root, const vector<Node*>& all_nodes, map<Node*, int>& node_to_idx, vector<int>& result) {
    if (!root) return;
    int n = all_nodes.size();
    
    // OD: Using bitmask vectors as per the original implementation structure
    vector<uint64_t> visited(n, 0);
    vector<uint64_t> frontier(n, 0);
    vector<uint64_t> next_frontier(n, 0);

    uint64_t source_mask = 1; // Represents the current traversal bit
    int root_idx = node_to_idx[root];
    visited[root_idx] |= source_mask;
    frontier[root_idx] |= source_mask;

    bool active = true;
    while (active) {
        active = false;

        // OD: The defining structure of bfs_06: Iterating over all node slots 
        // and using bitwise OR/AND logic for discovery.
        for (int u_idx = 0; u_idx < n; ++u_idx) {
            if (frontier[u_idx] & source_mask) {
                Node* u = all_nodes[u_idx];
                
                // Record value for Gold Standard output
                result.push_back(u->val);
                
                Node* neighbors[2] = {u->left, u->right};
                for (Node* v : neighbors) {
                    if (v) {
                        int v_idx = node_to_idx[v];
                        // Check if v is NOT visited (using bitwise logic)
                        if (!(visited[v_idx] & source_mask)) {
                            visited[v_idx] |= source_mask;
                            next_frontier[v_idx] |= source_mask;
                            active = true;
                        }
                    }
                }
            }
        }
        
        // OD: Swap buffers (frontiers)
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

    while(file >> num) {
        root = insert(root, num, all_nodes, node_to_idx);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_bit_parallel(root, all_nodes, node_to_idx, result);

    // 3. Print Actual Output (Matches Gold Standard style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}