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
// distinct from "in_09" (which uses stack<pair>) and "in_15" (sentinel).
// Stack 1: Holds the Node pointers.
// Stack 2: Holds the State (0 = Pre/Go Left, 1 = In/Visit, 2 = Post/Done).
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    stack<Node*> nodeStack;
    stack<int> stateStack;
    
    nodeStack.push(root);
    stateStack.push(0); // Initial state: 0 (Go Left)
    
    while(!nodeStack.empty()) {
        Node* curr = nodeStack.top();
        int state = stateStack.top();
        
        // We modify the state of the top element in-place by popping and pushing new state
        // OR we just handle logic and pop when done.
        stateStack.pop(); 
        
        if (state == 0) {
            // State 0: Prepare to go Left
            // We must re-push current node with State 1 (Process Next)
            stateStack.push(1);
            
            if (curr->left) {
                nodeStack.push(curr->left);
                stateStack.push(0);
            }
        } else if (state == 1) {
            // State 1: Left is done. Visit Node. Prepare to go Right.
            result.push_back(curr->val);
            
            // Re-push current node with State 2 (Cleanup) 
            // (Alternatively, we could pop curr here if we push right child directly, 
            // but strict state machines often keep the parent until children return.
            // Let's optimize: We can pop curr NOW if we are just going right.)
            
            // OPTIMIZED DUAL STACK LOGIC:
            // Once visited, we don't strictly need 'curr' anymore unless we need post-processing.
            // For Inorder, we are done with 'curr' after visiting and pushing Right.
            
            // However, to keep stacks parallel and logic distinct:
            // We'll keep 'curr' on stack but mark it State 2 to pop it next time.
            stateStack.push(2);
            
            if (curr->right) {
                nodeStack.push(curr->right);
                stateStack.push(0);
            }
        } else {
            // State 2: Right is done. Remove 'curr' from nodeStack.
            nodeStack.pop();
            // stateStack was already popped at start of loop
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
    string filename = "numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

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
