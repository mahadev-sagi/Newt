#include <iostream>
#include <vector>
#include <map>
#include <string>
#include <queue>
#include <fstream>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// Maintains the original structure: Using a Map with String keys for tracking
void bfs_string_map(Node* root, vector<int>& result) {
    if (!root) return;

    // OD: Using Map with String keys as per original bfs_03 implementation
    map<string, bool> Visited;
    queue<Node*> q; 

    string start_key = to_string(root->val);
    Visited[start_key] = true; 
    q.push(root);

    while (!q.empty()) {
        Node* u = q.front();
        q.pop();

        // Record the value for Gold Standard output
        result.push_back(u->val);

        // Process "neighbors" (Left and Right children)
        Node* neighbors[2] = {u->left, u->right};
        for (int i = 0; i < 2; ++i) {
            Node* v = neighbors[i];
            if (v != nullptr) {
                string v_key = to_string(v->val);
                
                // OD: Map lookup with string conversion for every check
                if (Visited.find(v_key) == Visited.end() || !Visited[v_key]) {
                    Visited[v_key] = true;
                    q.push(v);
                }
            }
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
    bfs_string_map(root, result);

    // 3. Print Actual Output (Gold Standard Format)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}