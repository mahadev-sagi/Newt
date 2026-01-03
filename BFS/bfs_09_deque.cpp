#include <iostream>
#include <vector>
#include <deque>
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
// OD: Preserves the use of std::deque (Double Ended Queue) from the original bfs_09.
// Adapted to traverse a BST in level-order.
void bfs_deque(Node* root, vector<int>& result) {
    if (!root) return;
    
    // OD: Using deque<Node*> as per the original implementation's tool choice
    deque<Node*> dq;
    dq.push_front(root); 

    while (!dq.empty()) {
        Node* u = dq.front();
        dq.pop_front();

        // Record the value for the Gold Standard output
        result.push_back(u->val);

        // Process tree "neighbors" (Left and Right children)
        // Weight is implicitly 1, so we push to the back to maintain level order
        if (u->left) {
            dq.push_back(u->left);
        }
        if (u->right) {
            dq.push_back(u->right);
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
    // Build BST from the 10k numbers
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_deque(root, result);

    // 3. Print Actual Output (Matches Gold Standard Traversal style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}