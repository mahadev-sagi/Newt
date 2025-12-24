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

// --- MAIN (Updated for LLFI) ---
int main(int argc, char** argv) {
    std::string filename = "../../numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    std::ifstream file(filename.c_str());


    int num;
    Node* c_root = NULL;         // System Under Test

    // Load Data into tree
    while (file >> num) {
        c_root = insertC(c_root, num);
    }
    file.close();

    // 1. Run System Under Test
    global_result.clear();
    postOrder(c_root);

    // 2. Print Actual Output
    for (size_t i = 0; i < global_result.size(); ++i) {
        std::cout << global_result[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}