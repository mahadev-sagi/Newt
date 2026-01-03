#include <iostream>
#include <vector>
#include <queue>
#include <fstream>
#include <string>
#include <map>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Preserves the unique structure: Scanning an Adjacency Matrix row by row.
// This is adapted to store results for the Gold Standard output.
void bfs_matrix(int n, const vector<vector<int>>& matrix, const vector<Node*>& all_nodes, int start_idx, vector<int>& result) {
    vector<bool> visited(n, false);
    
    queue<int> q;
    q.push(start_idx);
    visited[start_idx] = true;

    while (!q.empty()) {
        int u = q.front();
        q.pop();

        // Record the value of the node corresponding to this index
        result.push_back(all_nodes[u]->val);

        // OD: The core matrix-scan structure: Scan every potential node index 'v'
        for (int v = 0; v < n; ++v) {
            if (matrix[u][v] == 1 && !visited[v]) {
                visited[v] = true;
                q.push(v);
            }
        }
    }
}

// --- TREE BUILDER ---
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
    vector<Node*> all_nodes; // Keeps track of all nodes for matrix indexing

    // Build BST from the 10k numbers
    while(file >> num) {
        root = insert(root, num, all_nodes);
    }
    file.close();

    if (!root) return 0;

    // 2. Build Adjacency Matrix from the Tree structure
    int n = all_nodes.size();
    vector<vector<int>> matrix(n, vector<int>(n, 0));
    map<Node*, int> node_to_idx;
    
    for (int i = 0; i < n; ++i) {
        node_to_idx[all_nodes[i]] = i;
    }

    for (int i = 0; i < n; ++i) {
        Node* u = all_nodes[i];
        if (u->left)  matrix[i][node_to_idx[u->left]] = 1;
        if (u->right) matrix[i][node_to_idx[u->right]] = 1;
    }

    // 3. Run Implementation
    vector<int> result;
    bfs_matrix(n, matrix, all_nodes, node_to_idx[root], result);

    // 4. Print Actual Output (Matches Gold Standard Traversal style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}