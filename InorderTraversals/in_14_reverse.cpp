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

// --- IMPLEMENTATION (Source: Common pattern for "Kth Largest" / BST to Greater Tree) ---
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
    // This adds an O(N) memory swap pass that standard traversals don't have.
    std::reverse(result.begin(), result.end());
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
