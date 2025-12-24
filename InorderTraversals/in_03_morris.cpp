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
    Node* curr = root;
    while (curr != nullptr) {
        if (curr->left == nullptr) {
            result.push_back(curr->val);
            curr = curr->right;
        } else {
            Node* pre = curr->left;
            while (pre->right != nullptr && pre->right != curr)
                pre = pre->right;

            if (pre->right == nullptr) {
                pre->right = curr;
                curr = curr->left;
            } else {
                pre->right = nullptr;
                result.push_back(curr->val);
                curr = curr->right;
            }
        }
    }
}


Node* insert(Node* root, int val) {
    if (!root) return new Node(val);
    if (val < root->val) {
        root->left = insert(root->left, val);
        root->left->parent = root;
    } else {
        root->right = insert(root->right, val);
        root->right->parent = root;
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
