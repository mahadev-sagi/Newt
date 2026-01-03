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
// OD: Bottom-Up Approach preserved from original bfs_21.cpp. 
// Iterates through all unvisited nodes to find parents instead of using a Queue.
void bfs_bottom_up(Node* root, const vector<Node*>& all_nodes, vector<int>& result) {
    if (!root) return;

    // Use a map to track distance/visited state, preserving the dist[v] == -1 logic
    map<Node*, int> dist;
    for (Node* n : all_nodes) dist[n] = -1;
    
    vector<Node*> frontier;
    vector<Node*> next_frontier;
    
    // Initialize starting level
    dist[root] = 0;
    frontier.push_back(root);
    result.push_back(root->val);

    int level = 0;
    while (!frontier.empty()) {
        level++;
        next_frontier.clear();

        // OD: Iterate through ALL nodes to check if they are unvisited
        // This is the core "Bottom-Up" characteristic preserved from original bfs_21.cpp.
        for (Node* v : all_nodes) {
            if (dist[v] == -1) {
                // Check if any neighbor (parent or children in a tree) is in the current frontier
                Node* neighbors[] = {v->parent, v->left, v->right};
                bool parent_found = false;
                
                for (Node* u : neighbors) {
                    if (!u) continue;
                    
                    // Optimized check: is neighbor 'u' in the current frontier?
                    for (Node* f : frontier) {
                        if (f == u) {
                            parent_found = true;
                            break;
                        }
                    }
                    if (parent_found) break;
                }

                if (parent_found) {
                    dist[v] = level;
                    next_frontier.push_back(v);
                    result.push_back(v->val);
                }
            }
        }
        // OD: Swap buffers (frontier update)
        frontier = next_frontier;
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
    // 1. Setup Tree from numbers.txt (using same path as in_01_recursive.cpp)
    string filename = "../../numbers.txt"; 
    if (argc > 1) filename = argv[1];

    ifstream file(filename.c_str());
    if (!file.is_open()) {
        cerr << "Error: Could not open " << filename << endl;
        return 1;
    }

    int num;
    Node* root = nullptr;
    vector<Node*> all_nodes; // Collection of all nodes for the bottom-up iteration
    while (file >> num) {
        root = insert(root, num, all_nodes);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_bottom_up(root, all_nodes, result);

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}