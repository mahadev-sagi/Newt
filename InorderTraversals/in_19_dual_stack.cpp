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
// OD: Uses TWO PARALLEL STACKS.
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    stack<Node*> nodeStack;
    stack<int> stateStack;
    
    nodeStack.push(root);
    stateStack.push(0); // Initial state: 0 (Go Left)
    
    while(!nodeStack.empty()) {
        Node* curr = nodeStack.top();
        int state = stateStack.top();
        stateStack.pop(); 
        
        if (state == 0) {
            // State 0: Prepare to go Left
            stateStack.push(1);
            
            if (curr->left) {
                nodeStack.push(curr->left);
                stateStack.push(0);
            }
        } else if (state == 1) {
            // State 1: Left is done. Visit Node. Prepare to go Right.
            result.push_back(curr->val);
            stateStack.push(2);
            
            if (curr->right) {
                nodeStack.push(curr->right);
                stateStack.push(0);
            }
        } else {
            // State 2: Right is done. Remove 'curr' from nodeStack.
            nodeStack.pop();
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