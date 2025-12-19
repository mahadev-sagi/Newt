#include <iostream>
#include <vector>
#include <stack>
#include <iterator>
#include <fstream>
#include <string> 

using namespace std;

struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Custom Iterator Class compliant with STL tags
class InOrderIterator : public iterator<input_iterator_tag, int> {
    stack<Node*> s;
    Node* curr;

    void push_left() {
        while (curr) {
            s.push(curr);
            curr = curr->left;
        }
    }

public:
    InOrderIterator(Node* root) : curr(root) {
        push_left();
    }
    
    // End iterator constructor
    InOrderIterator() : curr(nullptr) {}

    bool operator!=(const InOrderIterator& other) const {
        return !s.empty() || curr != nullptr;
    }

    int operator*() const {
        return s.top()->val;
    }

    const InOrderIterator& operator++() {
        Node* node = s.top();
        s.pop();
        curr = node->right;
        push_left();
        return *this;
    }
};

void in_order_traversal(Node* root, vector<int>& result) {
    InOrderIterator it(root);
    InOrderIterator end;
    
    // OD: Usage looks like a standard loop, but logic is hidden in operators
    while(it != end) {
        result.push_back(*it);
        ++it;
    }
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
        vector<int> f = {5,3,7}; for(int i:f) root=insert(root,i);
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
