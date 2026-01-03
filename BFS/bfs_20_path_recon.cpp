#include <iostream>
#include <vector>
#include <queue>
#include <fstream>
#include <string>
#include <map>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
// Structure from in_01_recursive.cpp
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Maintains Parent tracking for path reconstruction (Preserved from original bfs_20)
// This variant is characterized by storing the predecessor for every discovered node.
void bfs_path_recon(Node* root, vector<int>& result) {
    if (!root) return;

    // OD: Using maps to maintain the state structures from the original bfs_20 implementation
    map<Node*, int> dist;
    map<Node*, Node*> parent_map; 
    map<Node*, bool> visited;
    
    queue<Node*> q;
    q.push(root);
    visited[root] = true;
    dist[root] = 0;

    while(!q.empty()) {
        Node* u = q.front();
        q.pop();

        // Record value for Gold Standard output
        result.push_back(u->val);

        // Process tree "neighbors" (Left and Right children)
        Node* neighbors[2] = {u->left, u->right};
        for(int i=0; i<2; i++) {
            Node* v = neighbors[i];
            if(v != nullptr && visited.find(v) == visited.end()) {
                visited[v] = true;
                dist[v] = dist[u] + 1;
                parent_map[v] = u; // OD: Extra Write Operation to track path discovery
                q.push(v);
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
    bfs_path_recon(root, result);

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}