#include <iostream>
#include <vector>
#include <functional>
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
// OD: Trampoline Style. Functions return the "Next Function" to call.
// Allows generic tail-call simulation.
typedef function<void()> Thunk;

void in_order_traversal(Node* root, vector<int>& result) {
    stack<Thunk> work_queue;
    
    // Helper to create thunks
    function<void(Node*)> schedule;
    schedule = [&](Node* n) {
        if (!n) return;
        // Push in reverse order of execution: Right, Process, Left
        work_queue.push([=, &schedule](){ schedule(n->right); });
        work_queue.push([=, &result](){ result.push_back(n->val); });
        work_queue.push([=, &schedule](){ schedule(n->left); });
    };

    schedule(root);

    while (!work_queue.empty()) {
        Thunk task = work_queue.top();
        work_queue.pop();
        task(); // Execute the thunk
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
