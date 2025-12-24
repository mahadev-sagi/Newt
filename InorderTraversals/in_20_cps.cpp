#include <iostream>
#include <vector>
#include <deque>
#include <functional>
#include <fstream>
#include <string> 

using namespace std;

struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Stack of Functions (Callbacks) instead of Stack of Nodes
void in_order_traversal(Node* root, vector<int>& result) {
    if (!root) return;
    
    // Deque of tasks
    deque<function<void()>> tasks;
    
    // Define the "Visit" function
    function<void(Node*)> visit;
    visit = [&](Node* n) {
        if (!n) return;
        
        // Schedule Right (LIFO order means push Right first so it pops last)
        tasks.push_front([=, &visit, &result](){ visit(n->right); });
        
        // Schedule Process
        tasks.push_front([=, &result](){ result.push_back(n->val); });
        
        // Schedule Left
        tasks.push_front([=, &visit, &result](){ visit(n->left); });
    };
    
    // Initial Task
    visit(root); 
    
    // Execute Loop
    while(!tasks.empty()) {
        auto task = tasks.front();
        tasks.pop_front();
        task(); // Execute
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