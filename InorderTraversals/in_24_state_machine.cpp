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
enum State { GO_LEFT, PROCESS, GO_RIGHT };

void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;

    stack<pair<Node*, State>> s;
    s.push({root, GO_LEFT});

    while (!s.empty()) {
        Node* node = s.top().first;
        State state = s.top().second;
        s.pop();

        if (!node) continue;

        // OD: Switch-Case control flow instead of if/else
        switch (state) {
            case GO_LEFT:
                s.push({node, PROCESS});
                if (node->left) s.push({node->left, GO_LEFT});
                break;
            
            case PROCESS:
                result.push_back(node->val);
                s.push({node, GO_RIGHT}); // Optional step logic
                break;

            case GO_RIGHT:
                if (node->right) s.push({node->right, GO_LEFT});
                break;
        }
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
