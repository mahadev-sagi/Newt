#include <iostream>
#include <vector>
#include <fstream>
#include <stack>
#include <string>

using namespace std;

struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// --- IMPLEMENTATION ---
struct CoState {
    Node* node;
    int step;
    
    // Constructor added to fix {node, 0} initialization issues
    CoState(Node* n, int s) : node(n), step(s) {}
};

// OD: "Resume" function takes state by reference
bool resume(stack<CoState>& s, vector<int>& result) {
    if (s.empty()) return false;
    
    CoState& frame = s.top();
    
    switch (frame.step) {
        case 0:
            frame.step = 1;
            if (frame.node->left) s.push(CoState(frame.node->left, 0));
            return true; // Yield
        case 1:
            result.push_back(frame.node->val);
            frame.step = 2;
            if (frame.node->right) s.push(CoState(frame.node->right, 0));
            return true; // Yield
        case 2:
            s.pop();
            return true; // Yield (Return)
    }
    return false;
}

void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    stack<CoState> s;
    s.push(CoState(root, 0));
    
    while (resume(s, result)); // Run until done
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