/*
 * Implementation: 06 - Pure C Recursive (Procedural)
 * Filename: po_06_c_recursive.cpp
 * Compatibility: C++ (Uses C-style structs)
 */

#include <iostream>
#include <vector>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <algorithm>
#include <string>

// Define the C-style struct
typedef struct Node {
    int data;
    struct Node* left;
    struct Node* right;
} Node;

// Global buffer to capture output during recursion
std::vector<int> global_result;

// Helper to create a new node (C-style)
Node* createNode(int data) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->data = data;
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode;
}

// Helper to insert into C-style BST
Node* insertC(Node* root, int data) {
    if (root == NULL) return createNode(data);
    if (data < root->data)
        root->left = insertC(root->left, data);
    else
        root->right = insertC(root->right, data);
    return root;
}

// The Algorithm: Pure C Recursive Function
void postOrder(Node* root) {
    if (root != NULL) {
        // 1. Visit Left
        postOrder(root->left);
        
        // 2. Visit Right
        postOrder(root->right);
        
        // 3. Visit Root (Store in global buffer instead of printf)
        global_result.push_back(root->data);
    }
}

// --- VERIFICATION HARNESS ---

// Standard TreeNode for Golden Reference calculation
struct TreeNode {
    int val;
    TreeNode *left, *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

TreeNode* insertGolden(TreeNode* root, int val) {
    if (!root) return new TreeNode(val);
    if (val < root->val) root->left = insertGolden(root->left, val);
    else root->right = insertGolden(root->right, val);
    return root;
}

void goldenPostorder(TreeNode* root, std::vector<int>& res) {
    if (!root) return;
    goldenPostorder(root->left, res);
    goldenPostorder(root->right, res);
    res.push_back(root->val);
}

// --- MAIN ---
int main(int argc, char** argv) {
    std::string filename = "numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    std::ifstream file(filename.c_str());
    if (!file.is_open()) {
        // Fallback default
        int defaults[] = {5, 3, 7, 2, 4, 6, 8};
        int num_defaults = sizeof(defaults) / sizeof(defaults[0]);
        
        Node* c_root = NULL;
        TreeNode* golden_root = NULL;
        
        for (int i = 0; i < num_defaults; ++i) {
            c_root = insertC(c_root, defaults[i]);
            golden_root = insertGolden(golden_root, defaults[i]);
        }
        
        global_result.clear();
        postOrder(c_root);
        
        std::vector<int> expected;
        goldenPostorder(golden_root, expected);
        
        if (global_result == expected) std::cout << "VERIFICATION PASSED" << std::endl;
        else std::cout << "FAILED" << std::endl;
        
        return 0;
    }

    int num;
    Node* c_root = NULL;         // System Under Test
    TreeNode* golden_root = NULL; // Expected Result

    // Load Data into both trees
    while (file >> num) {
        c_root = insertC(c_root, num);
        golden_root = insertGolden(golden_root, num);
    }
    file.close();

    // 1. Run System Under Test
    global_result.clear();
    postOrder(c_root);

    // 2. Run Golden Reference
    std::vector<int> expected;
    goldenPostorder(golden_root, expected);

    // 3. Verify
    if (global_result == expected) {
        std::cout << "VERIFICATION PASSED" << std::endl;
    } else {
        std::cout << "FAILED" << std::endl;
        std::cout << "Expected size: " << expected.size() << " Got: " << global_result.size() << std::endl;
    }

    return 0;
}
