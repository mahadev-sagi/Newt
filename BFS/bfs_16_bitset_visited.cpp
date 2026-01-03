#include <iostream>
#include <vector>
#include <queue>
#include <fstream>
#include <string>
#include <map>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
// Structure from in_01_recursive.cpp, augmented with an ID for bitset indexing
struct Node {
    int val;
    int id; // ID to map node to a bit in the vector<bool>
    Node *left, *right, *parent;
    Node(int v, int i) : val(v), id(i), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Uses vector<bool> which is a specialized bit-field (Preserved from original bfs_16)
void bfs_bitset(Node* root, int node_count, vector<int>& result) {
    if (!root) return;

    // OD: This is NOT a normal array. It is a bitfield.
    // Using vector<bool> as a bitset for tracking visited nodes.
    vector<bool> visited(node_count, false);
    
    queue<Node*> q;
    q.push(root);
    visited[root->id] = true; // Sets a specific BIT

    while(!q.empty()) {
        Node* u = q.front();
        q.pop();

        // Record the value for the Golden Standard output
        result.push_back(u->val);

        // Process tree "neighbors" (Left and Right children)
        Node* neighbors[2] = {u->left, u->right};
        for(int i = 0; i < 2; i++) {
            Node* v = neighbors[i];
            if(v != nullptr) {
                // OD: Reads a specific BIT using bitwise ops
                if(!visited[v->id]) {
                    visited[v->id] = true;
                    q.push(v);
                }
            }
        }
    }
}

// --- TREE BUILDER ---
// Standard BST insertion logic from in_01_recursive.cpp
Node* insert(Node* root, int val, int& id_counter) {
    if (!root) return new Node(val, id_counter++);
    if (val < root->val) {
        root->left = insert(root->left, val, id_counter);
        root->left->parent = root;
    } else {
        root->right = insert(root->right, val, id_counter);
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
    int id_counter = 0;
    // Build BST from the 10k numbers dataset
    while(file >> num) {
        root = insert(root, num, id_counter);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_bitset(root, id_counter, result);

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}