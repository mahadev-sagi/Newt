#include <iostream>
#include <vector>
#include <fstream>
#include <string> 

using namespace std;

// Standard Node for your Harness
struct Node {
    int val;
    Node *left, *right;
    Node(int x) : val(x), left(NULL), right(NULL) {}
};

// --- IMPLEMENTATION (Source: Hao Chen / haoel) ---
// OD: Uses std::vector as a stack manually (push_back/pop_back)
// This forces contiguous memory for the stack, unlike std::stack which uses deque.
void in_order_traversal(Node *root, vector<int>& v) {
    vector<Node*> stack;
    
    while(stack.size() > 0 || root != NULL) {
        if (root != NULL) {
            stack.push_back(root);
            root = root->left;
        } else {
            if (stack.size() > 0) {
                root = stack.back();
                stack.pop_back();
                v.push_back(root->val);
                root = root->right;
            }
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
    in_order_traversal(root, result);

    // Print Actual Output
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;
    
    return 0;
}