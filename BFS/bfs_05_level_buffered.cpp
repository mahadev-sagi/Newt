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
// Preserves the unique structure: Using two vectors (buffers) instead of a queue
void bfs_level_buffered(Node* root, vector<int>& result) {
    if (!root) return;
    
    // OD: Two vectors instead of a queue, as per original bfs_05 logic
    vector<Node*> visit;
    vector<Node*> visitNext;
    
    visit.push_back(root);

    while(!visit.empty()) {
        for(Node* u : visit) {
            // Collect the value for the Gold Standard output
            result.push_back(u->val);

            // Process tree "neighbors" (children)
            if (u->left) {
                visitNext.push_back(u->left);
            }
            if (u->right) {
                visitNext.push_back(u->right);
            }
        }
        // OD: Swap buffers to move to the next level
        visit = move(visitNext);
        visitNext.clear(); 
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
    while(file >> num) {
        root = insert(root, num);
    }
    file.close();

    // 2. Run Implementation
    vector<int> result;
    bfs_level_buffered(root, result);

    // 3. Print Actual Output (Matches Gold Standard Traversal style)
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << (i == result.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}