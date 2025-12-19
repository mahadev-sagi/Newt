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
        // Note: Using [=] captures by value, including the pointer 'n'
        tasks.push_front([=, &visit, &result](){ visit(n->right); });
        
        // Schedule Process
        tasks.push_front([=, &result](){ result.push_back(n->val); });
        
        // Schedule Left
        tasks.push_front([=, &visit, &result](){ visit(n->left); });
    };
    
    // Initial Task
    // OD: This recursion is fake; it just schedules tasks to the deque
    visit(root); 
    
    // Execute Loop
    while(!tasks.empty()) {
        auto task = tasks.front();
        tasks.pop_front();
        task(); // Execute
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
        vector<int> f = {5,3,7,2,4,6,8}; for(int i:f) root=insert(root,i);
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
