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
// Using int instead of bool for "Color" (0: White/Visit, 1: Gray/Print)
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    // Pair: {Color, Node*}
    stack<pair<int, Node*>> s;
    s.push({0, root});

    while (!s.empty()) {
        int color = s.top().first;
        Node* node = s.top().second;
        s.pop();

        if (node == nullptr) continue;

        if (color == 0) {
            // Push Right, Node(Gray), Left (Reverse order for Stack)
            s.push({0, node->right});
            s.push({1, node});      // Mark as Gray (Process next time)
            s.push({0, node->left});
        } else {
            result.push_back(node->val);
        }
    }
}

// --- HARNESS ---
Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    if (val < root->val) root->left = insert(root->left, val);
    else root->right = insert(root->right, val);
    return root;
}

// --- UPDATED MAIN ---
int main(int argc, char** argv) {
    // 1. Logic to pick the file from argument OR default
    string filename = "numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    // 2. Open file using the variable
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
