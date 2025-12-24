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
const int THRESHOLD = 5;

void iterative_part(Node* root, vector<int>& result) {
    stack<Node*> s;
    Node* curr = root;
    while (curr || !s.empty()) {
        while (curr) {
            s.push(curr);
            curr = curr->left;
        }
        curr = s.top(); s.pop();
        result.push_back(curr->val);
        curr = curr->right;
    }
}

void recursive_part(Node* root, vector<int>& result, int depth) {
    if (!root) return;
    
    if (depth >= THRESHOLD) {
        // Switch to Iterative
        iterative_part(root, result);
        return;
    }
    
    if (depth < THRESHOLD) {
        recursive_part(root->left, result, depth + 1);
        result.push_back(root->val);
        recursive_part(root->right, result, depth + 1);
    }
}

void in_order_traversal(Node* root, vector<int>& result) {
    recursive_part(root, result, 0);
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