#include <iostream>
#include <vector>
#include <queue>
#include <fstream>
#include <string>
#include <map>

using namespace std;

// OD: Enum state tracking preserved from original bfs_24.cpp
enum Color { WHITE, GRAY, BLACK };

// --- TREE STRUCTURE (Matches Traversal Format) ---
// Structure from in_01_recursive.cpp
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Uses Enum state tracking (WHITE=unvisited, GRAY=discovered, BLACK=finished)
void bfs_color(Node* root, vector<int>& result) {
    if (!root) return;

    // Use a map to track the color state of each pointer
    map<Node*, Color> color;
    
    queue<Node*> q;
    
    // Start discovery
    color[root] = GRAY; // Discovered but not finished
    q.push(root);

    while(!q.empty()) {
        Node* u = q.front();
        q.pop();

        // Record value for Gold Standard output
        result.push_back(u->val);

        // Process tree "neighbors" (Left and Right children)
        Node* neighbors[2] = {u->left, u->right};
        for (int i = 0; i < 2; i++) {
            Node* v = neighbors[i];
            if (v != nullptr) {
                // Check if unvisited using the Enum state
                if (color.find(v) == color.end() || color[v] == WHITE) {
                    color[v] = GRAY;
                    q.push(v);
                }
            }
        }
        
        // OD: Explicitly mark as "Finished" as per original implementation logic
        color[u] = BLACK; 
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
    bfs_color(root, result);

    // 3. Print Actual Output (Matches Inorder/Postorder style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}