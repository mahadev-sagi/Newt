#include <iostream>
#include <vector>
#include <set>
#include <fstream>
#include <string>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Preserves the use of std::set to manage the frontier and visited set.
// Adapted to traverse a BST in level-order.
void bfs_set(Node* root, vector<int>& result) {
    if (!root) return;

    // OD: Using std::set for both visited tracking and the current level frontier.
    set<Node*> visited;
    set<Node*> frontier;
    
    frontier.insert(root);
    visited.insert(root);

    while (!frontier.empty()) {
        set<Node*> next_frontier;
        
        for (Node* u : frontier) {
            // Record the value for the Gold Standard output
            result.push_back(u->val);

            // Process tree "neighbors" (Left and Right children)
            Node* neighbors[2] = {u->left, u->right};
            for (int i = 0; i < 2; ++i) {
                Node* v = neighbors[i];
                if (v != nullptr && visited.find(v) == visited.end()) {
                    visited.insert(v);
                    next_frontier.insert(v);
                }
            }
        }
        // Move to the next level
        frontier = next_frontier;
    }
}

// --- TREE BUILDER ---
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
    // Build BST from the 10k numbers
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_set(root, result);

    // 3. Print Actual Output (Gold Standard Format)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}