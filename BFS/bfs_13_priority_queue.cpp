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
// OD: Preserves the unique structure: Using a Priority Queue (Dijkstra-style).
// This variant ensures level-order by sorting by {Distance, Node pointer}.
void bfs_prio(Node* root, vector<int>& result) {
    if (!root) return;

    // Min-heap storing {distance, Node*}
    // Sorting by distance restores Level-Order behavior in a tree structure.
    priority_queue<pair<int, Node*>, vector<pair<int, Node*>>, greater<pair<int, Node*>>> pq;
    
    // Tracking distances to maintain the Dijkstra-style structure
    map<Node*, int> dists;
    
    dists[root] = 0;
    pq.push({0, root});

    while(!pq.empty()) {
        int d = pq.top().first;
        Node* u = pq.top().second;
        pq.pop();

        // Record the value for the Gold Standard output
        result.push_back(u->val);

        // Process tree "neighbors" (Left and Right children)
        Node* neighbors[2] = {u->left, u->right};
        for (int i = 0; i < 2; ++i) {
            Node* v = neighbors[i];
            if (v != nullptr) {
                // Dijkstra logic: update if current distance is shorter (initial -1)
                if (dists.find(v) == dists.end()) {
                    dists[v] = d + 1;
                    pq.push({dists[v], v});
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
    // Build BST from the dataset
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_prio(root, result);

    // 3. Print Actual Output (Matches Golden Standard style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}