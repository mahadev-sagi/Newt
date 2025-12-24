#include <iostream>
#include <vector>
#include <fstream>
#include <string>

using namespace std;

struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    Node* cur = root;

    // Find the leftmost node
    while (cur && cur->left) {
        cur = cur->left;
    }

    while (cur) {
        result.push_back(cur->val); // Output the data

        // Traverse the right subtree
        if (cur->right) {
            cur = cur->right;
            while (cur->left) {
                cur = cur->left;
            }
        } else {
            // Move up the tree
            // OD: Explicitly checking parent relationships to find successor
            while (cur->parent && cur == cur->parent->right) {
                cur = cur->parent;
            }
            cur = cur->parent;
        }
    }
}

// --- TREE BUILDER ---
// Critical: Insert must set parent pointers for this algorithm to work!
Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    if (val < root->val) {
        Node* l = insert(root->left, val);
        root->left = l;
        l->parent = root; // SET PARENT
    } else {
        Node* r = insert(root->right, val);
        root->right = r;
        r->parent = root; // SET PARENT
    }
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
    if(root) in_order_traversal(root, result);

    // Print Actual Output
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}