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