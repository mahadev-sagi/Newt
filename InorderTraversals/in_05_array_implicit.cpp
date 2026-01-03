#include <cstdio>
#include <cstdlib>

using namespace std;

// --- CORE LOGIC (UNCHANGED) ---
struct Node {
    int val;
    Node* left;
    Node* right;
    Node(int v) : val(v), left(NULL), right(NULL) {}
};

Node* insert(Node* root, int key) {
    if (root == NULL) return new Node(key);
    if (key < root->val) {
        root->left = insert(root->left, key);
    } else {
        root->right = insert(root->right, key);
    }
    return root;
}

void inorder(Node* root) {
    if (root == NULL) return;
    inorder(root->left);
    printf("%d ", root->val); // Using printf which matches your original code
    inorder(root->right);
}

// --- MAIN (Updated Infrastructure ONLY) ---
int main(int argc, char** argv) {
    // 1. Use simple char* instead of std::string to fix Linker Error
    const char* filename = "numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    // 2. Use FILE* instead of ifstream to avoid C++ library issues
    FILE* file = fopen(filename, "r");

    // 3. Fix the "0 Cycles" Crash: Look in parent directory if not found
    if (!file) {
        char parent_path[256];
        sprintf(parent_path, "../%s", filename);
        file = fopen(parent_path, "r");
    }

    // Safety check
    if (!file) return 1;

    int num;
    Node* root = NULL;

    // Standard reading loop
    while(fscanf(file, "%d", &num) == 1) {
        root = insert(root, num);
    }
    fclose(file);

    inorder(root);
    printf("\n");

    // 4. Force Exit to fix LLFI assertion failure
    exit(0);
}
