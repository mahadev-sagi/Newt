#include <iostream>
#include <vector>
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
// OD: Direction Optimizing Logic preserved from bfs_25_direction_opt.cpp.
// Switches between "Push" (Top-Down) and "Pull" (Bottom-Up) based on frontier size.
void bfs_direction_opt(Node* root, const vector<Node*>& all_nodes, vector<int>& result) {
    if (!root) return;

    int n = all_nodes.size();
    map<Node*, int> dist;
    for (Node* node : all_nodes) dist[node] = -1;

    dist[root] = 0;
    vector<Node*> frontier;
    frontier.push_back(root);
    
    int level = 0;
    // Simple heuristic threshold as per original implementation
    int threshold = n / 10; 

    while (!frontier.empty()) {
        level++;
        vector<Node*> next_frontier;

        // OD: HEURISTIC CHECK - If frontier is huge, switch to Bottom-Up (Pull)
        if (frontier.size() > (size_t)threshold) {
            // --- BOTTOM-UP STEP (Pull) ---
            for (Node* v : all_nodes) {
                if (dist[v] == -1) { // If unvisited
                    // In a tree, check neighbors: parent and children
                    Node* neighbors[] = {v->parent, v->left, v->right};
                    bool parent_in_frontier = false;
                    
                    for (Node* u : neighbors) {
                        if (!u) continue;
                        // OD: Check if neighbor 'u' is in the current frontier
                        for (Node* f : frontier) {
                            if (f == u) {
                                parent_in_frontier = true;
                                break;
                            }
                        }
                        if (parent_in_frontier) break;
                    }
                    
                    if (parent_in_frontier) {
                        dist[v] = level;
                        next_frontier.push_back(v);
                        result.push_back(v->val);
                    }
                }
            }
        } else {
            // --- TOP-DOWN STEP (Push / Standard) ---
            for (Node* u : frontier) {
                // Record processed nodes for output in the order discovered
                // (Root is already in result or handled at level 0)
                if (level == 1 && u == root) result.push_back(u->val);

                Node* children[] = {u->left, u->right};
                for (Node* v : children) {
                    if (v && dist[v] == -1) {
                        dist[v] = level;
                        next_frontier.push_back(v);
                        result.push_back(v->val);
                    }
                }
            }
        }
        frontier = next_frontier;
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
    vector<Node*> all_nodes; // Collection of nodes for the Pull/Bottom-Up scans
    while (file >> num) {
        root = insert(root, num, all_nodes);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_direction_opt(root, all_nodes, result);

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}