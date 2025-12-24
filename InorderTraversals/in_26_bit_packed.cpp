#include <iostream>
#include <vector>
#include <stack>
#include <fstream>
#include <string>

using namespace std;

struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Simulates Tagged Pointers.
// In real low-level code, we'd use the bottom bits of the pointer.
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    // Stack stores {Node*, Tag}
    // Tag 0: Go Left
    // Tag 1: Process & Go Right
    stack<pair<Node*, int>> s;
    s.push({root, 0});

    while (!s.empty()) {
        Node* curr = s.top().first;
        int tag = s.top().second;
        s.pop();

        if (!curr) continue;

        if (tag == 0) {
            // Push "Process Me Later" (Tag 1)
            // Push "Process Left Now" (Tag 0)
            // Order LIFO: Push Right, Self(1), Left
            
            if (curr->right) s.push({curr->right, 0});
            
            s.push({curr, 1});
            
            if (curr->left) s.push({curr->left, 0});
            
        } else {
            // Tag 1: Process
            result.push_back(curr->val);
        }
    }
}

// --- TREE BUILDER ---
Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    if (val < root->val) root->left = insert(root->left, val);
    else root->right = insert(root->right, val);
    return root;
}

// --- MAIN (Updated) ---
int main(int argc, char** argv) {
    string filename = "../../numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    ifstream file(filename.c_str());

    int num;
    Node* root = nullptr;

    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    vector<int> result;
    in_order_traversal(root, result);

    // Print Actual Output
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}