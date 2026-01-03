#include <iostream>
#include <vector>
#include <fstream>
#include <string>

using namespace std;

// --- TREE STRUCTURE (Matches Traversal Format) ---
struct Node {
    int val;
    Node *left, *right, *parent;
    Node(int v) : val(v), left(nullptr), right(nullptr), parent(nullptr) {}
};

// --- IMPLEMENTATION ---
// OD: Fixed size circular queue preserved from original bfs_02
// Adapted to store Node pointers instead of integers
struct CustomQueue {
    Node** arr;
    int front, rear, capacity;
    CustomQueue(int c) {
        capacity = c;
        arr = new Node*[c];
        front = 0; rear = 0;
    }
    ~CustomQueue() { delete[] arr; }
    
    void push(Node* x) { arr[rear++] = x; } 
    void pop() { front++; }
    Node* top() { return arr[front]; }
    bool empty() { return front == rear; }
};

void bfs_custom_queue(Node* root, vector<int>& result) {
    if (!root) return;

    // OD: Using the CustomQueue logic as per original bfs_02
    // Capacity set to 10001 to handle the numbers.txt dataset safely
    CustomQueue q(10001);
    
    q.push(root);

    while(!q.empty()) {
        Node* u = q.top();
        q.pop();

        result.push_back(u->val);

        // OD: Level-order logic (Tree "neighbors")
        if (u->left) {
            q.push(u->left);
        }
        if (u->right) {
            q.push(u->right);
        }
    }
}

// --- TREE BUILDER ---
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

int main(int argc, char** argv) {
    // 1. Setup Tree from numbers.txt
    string filename = "numbers.txt";
    if (argc > 1) filename = argv[1];

    ifstream file(filename.c_str());
    if (!file.is_open()) {
        cerr << "Error: Could not open " << filename << endl;
        return 1;
    }

    int num;
    Node* root = nullptr;
    // Build BST from the 10k numbers
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_custom_queue(root, result);

    // 3. Print Actual Output for Gold Standard Comparison
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}