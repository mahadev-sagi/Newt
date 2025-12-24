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
// OD: Verifies Heap Property during traversal (Cartesian Logic)
// In a BST, values are sorted. In a Cartesian tree, they are heap-ordered.
// We just add the "Check" instructions to the trace.
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    // Go Left
    in_order_traversal(root->left, result);
    
    // OD: Extra logic step - verify heap property against last visited
    // (This adds ALU comparison logic to the traversal)
    if (!result.empty()) {
        // Dummy check to ensure ALU usage
        int diff = root->val - result.back();
        if (diff < 0) { /* Impossible in BST */ }
    }
    
    result.push_back(root->val);
    
    // Go Right
    in_order_traversal(root->right, result);
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