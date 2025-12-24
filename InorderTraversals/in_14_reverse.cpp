#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm> 
#include <string> 

using namespace std;

struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// --- IMPLEMENTATION (Source: Common pattern for "Kth Largest") ---
// OD: Traverse Right -> Root -> Left (Reverse Sorted Order)
void reverse_inorder(Node* root, vector<int>& result) {
    if (!root) return;
    
    // 1. Go Right first
    reverse_inorder(root->right, result);
    
    // 2. Visit Root
    result.push_back(root->val);
    
    // 3. Go Left
    reverse_inorder(root->left, result);
}

void in_order_traversal(Node* root, vector<int>& result) {
    reverse_inorder(root, result);
    
    // OD: Post-processing step to flip the result back to ascending
    std::reverse(result.begin(), result.end());
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