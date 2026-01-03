#include <iostream>
#include <vector>
#include <list>
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
// OD: Preserves the use of std::list as a queue instead of std::queue/deque.
void bfs_list_queue(Node* root, vector<int>& result) {
    if (!root) return;

    // OD: Using std::list for the queue structure as per original bfs_12
    list<Node*> q; 
    map<Node*, bool> visited;
    
    visited[root] = true;
    q.push_back(root);

    while(!q.empty()) {
        Node* u = q.front();
        q.pop_front();

        // Record the value for Gold Standard output
        result.push_back(u->val);

        // Process tree "neighbors" (Left and Right children)
        Node* neighbors[2] = {u->left, u->right};
        for (int i = 0; i < 2; ++i) {
            Node* v = neighbors[i];
            if (v != nullptr && visited.find(v) == visited.end()) {
                visited[v] = true;
                q.push_back(v);
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
    // Build BST from the 10k numbers dataset
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_list_queue(root, result);

    // 3. Print Actual Output (Matches Traversal style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}