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

// --- IMPLEMENTATION (Source: Unified Iterative Pattern) ---
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    stack<Node*> s;
    s.push(root);
    
    while (!s.empty()) {
        Node* node = s.top();
        s.pop();
        
        if (node != nullptr) {
            // Push in reverse order of processing:
            // In-Order is Left -> Node -> Right
            // So we push: Right -> Node -> Left
            
            if (node->right) s.push(node->right);
            
            s.push(node);
            s.push(nullptr); // Sentinel: "Process the node below me next time"
            
            if (node->left) s.push(node->left);
        } else {
            // If we popped a nullptr, the next item is ready to process
            if (!s.empty()) {
                result.push_back(s.top()->val);
                s.pop();
            }
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
        vector<int> f = {5,3,7,2,4,6,8}; for(int i:f) root=insert(root,i);
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
