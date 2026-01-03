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

// --- CSR GRAPH STRUCTURE (Preserved from original bfs_14) ---
struct CSRGraph {
    vector<int> row_ptr;
    vector<int> col_ind;
    int num_nodes;
};

// --- IMPLEMENTATION ---
// OD: Preserves the structure of iterating CSR arrays (contiguous memory)
void bfs_csr(const CSRGraph& g, const vector<Node*>& all_nodes, int start_idx, vector<int>& result) {
    vector<bool> visited(g.num_nodes, false);
    queue<int> q;

    q.push(start_idx);
    visited[start_idx] = true;

    while (!q.empty()) {
        int u_idx = q.front();
        q.pop();

        // Record the value for the Golden Standard output
        result.push_back(all_nodes[u_idx]->val);

        // OD: Iterating CSR arrays as per the defining logic of bfs_14
        for (int i = g.row_ptr[u_idx]; i < g.row_ptr[u_idx+1]; ++i) {
            int v_idx = g.col_ind[i];
            if (!visited[v_idx]) {
                visited[v_idx] = true;
                q.push(v_idx);
            }
        }
    }
}

// --- TREE BUILDER ---
// Standard BST insertion logic as seen in in_01_recursive.cpp
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
    vector<Node*> all_nodes; // Maintain list of nodes for indexing

    while(file >> num) {
        root = insert(root, num, all_nodes);
    }
    file.close();

    if (!root) return 0;

    // 2. Build CSR representation from the Tree structure
    int n = all_nodes.size();
    map<Node*, int> node_to_idx;
    for (int i = 0; i < n; ++i) {
        node_to_idx[all_nodes[i]] = i;
    }

    CSRGraph g;
    g.num_nodes = n;
    g.row_ptr.push_back(0);
    for (int i = 0; i < n; ++i) {
        Node* u = all_nodes[i];
        if (u->left)  g.col_ind.push_back(node_to_idx[u->left]);
        if (u->right) g.col_ind.push_back(node_to_idx[u->right]);
        g.row_ptr.push_back(g.col_ind.size());
    }

    // 3. Run Implementation
    vector<int> result;
    bfs_csr(g, all_nodes, node_to_idx[root], result);

    // 4. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}