#include <iostream>
#include <vector>
#include <fstream>
#include <map>
#include <string>

using namespace std;

struct Node {
    int val;
    Node *left, *right;
    Node(int v) : val(v), left(nullptr), right(nullptr) {}
};

// --- IMPLEMENTATION ---
// REPLACEMENT IMPLEMENTATION (Safe State Machine for Simulation)
void in_order_schorr_sim(Node* root, vector<int>& result) {
    Node* curr = root;
    map<Node*, Node*> parent_map; // OD: Dynamic Parent Map
    map<Node*, int> visit_state;  // 0: Pre, 1: In, 2: Post
    
    parent_map[root] = nullptr;
    
    while (curr) {
        int& status = visit_state[curr];
        
        if (status == 0) {
            status = 1;
            if (curr->left) {
                parent_map[curr->left] = curr;
                curr = curr->left;
                continue;
            }
        }
        
        if (status == 1) {
            result.push_back(curr->val);
            status = 2;
            if (curr->right) {
                parent_map[curr->right] = curr;
                curr = curr->right;
                continue;
            }
        }
        
        if (status == 2) {
            curr = parent_map[curr];
        }
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
    // Calling the simulation version as per original file
    in_order_schorr_sim(root, result);

    // Print Actual Output
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}