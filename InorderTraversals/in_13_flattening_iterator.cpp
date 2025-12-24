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
class BSTIterator {
private:
    vector<int> nodes;
    int index;

    void inorder(Node* root) {
        if (!root) return;
        inorder(root->left);
        nodes.push_back(root->val);
        inorder(root->right);
    }

public:
    // OD: Traversal happens entirely in Constructor
    BSTIterator(Node* root) {
        index = 0;
        inorder(root);
    }

    bool hasNext() {
        return index < nodes.size();
    }

    int next() {
        return nodes[index++];
    }
};

void in_order_traversal(Node* root, vector<int>& result) {
    // OD: Client sees an iterator, but work is already done
    BSTIterator iter(root);
    while (iter.hasNext()) {
        result.push_back(iter.next());
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