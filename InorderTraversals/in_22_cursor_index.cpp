#include <iostream>
#include <vector>
#include <fstream>
#include <stack>
#include <string> 

using namespace std;

// Standard Node for Harness
struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// OD: Cursor Node (Index based)
struct CursorNode {
    int val;
    int left;
    int right;
    
    // Constructor added to allow {val, -1, -1} initialization
    CursorNode(int v, int l, int r) : val(v), left(l), right(r) {}
};

// Helper: Convert pointer tree to Cursor Vector
int build_cursor_tree(Node* root, vector<CursorNode>& nodes) {
    if (!root) return -1;
    int idx = nodes.size();
    nodes.push_back(CursorNode(root->val, -1, -1)); // Use Constructor
    
    nodes[idx].left = build_cursor_tree(root->left, nodes);
    nodes[idx].right = build_cursor_tree(root->right, nodes);
    return idx;
}

// --- IMPLEMENTATION ---
void in_order_traversal(Node* root, vector<int>& result) {
    vector<CursorNode> nodes;
    int start_idx = build_cursor_tree(root, nodes);
    
    if (start_idx == -1) return;

    // OD: Stack stores INTEGERS (indices), not pointers
    stack<int> s;
    int curr = start_idx;

    while (curr != -1 || !s.empty()) {
        while (curr != -1) {
            s.push(curr);
            curr = nodes[curr].left; // Integer lookup
        }

        curr = s.top();
        s.pop();
        result.push_back(nodes[curr].val);
        curr = nodes[curr].right; // Integer lookup
    }
}

// --- HARNESS ---
Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    if (val < root->val) root->left = insert(root->left, val);
    else root->right = insert(root->right, val);
    return root;
}

// --- MAIN ---
int main(int argc, char** argv) {
    // 1. Logic to pick the file from argument OR default
    string filename = "numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    // 2. Open file
    ifstream file(filename.c_str());
    int num;
    Node* root = nullptr;

    if (!file.is_open()) {
        vector<int> f = {5,3,7}; for(int i:f) root=insert(root,i);
    } else {
        while(file >> num) root = insert(root, num);
        file.close();
    }

    vector<int> result;
    in_order_traversal(root, result);

    bool passed = true;
    for (size_t i = 0; i < result.size() - 1; ++i) {
        if (result[i] > result[i+1]) { passed = false; break; }
    }
    
    if (passed && !result.empty()) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
