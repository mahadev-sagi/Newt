#include <iostream>
#include <vector>
#include <queue>
#include <map>
#include <fstream>
#include <string>

using namespace std;

// --- TREE STRUCTURE (from Inorder Traversal) ---
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// This maintains the specific BFS structure: Using a Map for visited tracking
void bfs_map_visited(Node* root, vector<int>& result) {
    if (!root) return;

    // OD: Using Map for visited tracking (as per original bfs_01)
    map<Node*, bool> visited; 
    
    queue<Node*> q;
    q.push(root);
    visited[root] = true;

    while(!q.empty()) {
        Node* u = q.front();
        q.pop();
        
        // Record the value for output
        result.push_back(u->val);

        // OD: Tree lookup for every neighbor check
        if (u->left && visited.find(u->left) == visited.end()) {
            visited[u->left] = true;
            q.push(u->left);
        }
        if (u->right && visited.find(u->right) == visited.end()) {
            visited[u->right] = true;
            q.push(u->right);
        }
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
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_map_visited(root, result);

    // 3. Print Actual Output (Matches Traversal Format)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}