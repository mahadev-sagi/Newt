#include <iostream>
#include <vector>
#include <fstream>
#include <string> 

using namespace std;

struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// --- IMPLEMENTATION ---
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    // OD: Vector stack with explicit memory management
    vector<Node*> stack;
    stack.reserve(1000); // Pre-allocate to avoid resize faults
    
    Node* curr = root;

    while (curr != nullptr || !stack.empty()) {
        while (curr != nullptr) {
            // OD: Explicit capacity check simulation
            if (stack.size() >= stack.capacity()) {
                stack.reserve(stack.capacity() * 2);
            }
            stack.push_back(curr);
            curr = curr->left;
        }

        curr = stack.back();
        stack.pop_back();
        result.push_back(curr->val);
        curr = curr->right;
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