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
class BSTIterator {
private:
    stack<Node*> s;

    // Helper to prime the stack with the leftmost path
    void pushAllLeft(Node* node) {
        while (node != nullptr) {
            s.push(node);
            node = node->left;
        }
    }

public:
    BSTIterator(Node* root) {
        pushAllLeft(root);
    }

    bool hasNext() {
        return !s.empty();
    }

    int next() {
        Node* tmpNode = s.top();
        s.pop();
        // OD: Lazy evaluation. Only process right child when parent is popped.
        pushAllLeft(tmpNode->right);
        return tmpNode->val;
    }
};

void in_order_traversal(Node* root, vector<int>& result) {
    // OD: Client code controls the loop, not the recursion
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