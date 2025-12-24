#include <iostream>
#include <vector>
#include <fstream>
#include <cstdlib>
#include <string> 

using namespace std;

// OD: Custom Node with Thread Flags
struct Node {
    int data;
    int lbit, rbit; // 0 = Thread, 1 = Child
    Node *left, *right;
};

Node* createNode(int data) {
    Node* newNode = new Node;
    newNode->data = data;
    newNode->lbit = newNode->rbit = 0;
    newNode->left = newNode->right = nullptr;
    return newNode;
}

// OD: Insert logic that maintains threads
Node* insertTBT(Node* head, int data) {
    if (head->left == head) { // First node
        Node* temp = createNode(data);
        temp->left = head;
        temp->right = head;
        head->left = temp;
        head->lbit = 1;
        return head;
    }

    Node* curr = head->left;
    while (true) {
        if (data < curr->data && curr->lbit == 1) {
            curr = curr->left;
        } else if (data > curr->data && curr->rbit == 1) {
            curr = curr->right;
        } else {
            break;
        }
    }

    Node* temp = createNode(data);
    if (data < curr->data) {
        temp->left = curr->left;
        temp->right = curr;
        curr->left = temp;
        curr->lbit = 1;
    } else {
        temp->right = curr->right;
        temp->left = curr;
        curr->right = temp;
        curr->rbit = 1;
    }
    return head;
}

// OD: Traversal using Thread Flags
void in_order_traversal(Node* head, vector<int>& result) {
    Node* temp = head->left;
    while (temp != head) {
        while (temp->lbit == 1) {
            temp = temp->left;
        }
        result.push_back(temp->data);
        while (temp->rbit == 0 && temp->right != head) {
            temp = temp->right;
            result.push_back(temp->data);
        }
        temp = temp->right;
    }
}

// --- MAIN (Updated) ---
int main(int argc, char** argv) {
    // 1. Initialize Dummy Head for TBT (Critical for this algo)
    Node* head = new Node;
    head->lbit = 0; head->rbit = 1;
    head->left = head->right = head;

    // 2. Logic to pick the file from argument OR default
    string filename = "../../numbers.txt";
    if (argc > 1) {
        filename = argv[1];
    }

    // 3. Open file
    ifstream file(filename.c_str());

    int num;
    while(file >> num) {
        insertTBT(head, num);
    }
    file.close();

    vector<int> result;
    in_order_traversal(head, result);

    // Print Actual Output
    for (size_t i = 0; i < result.size(); ++i) {
        cout << result[i] << " ";
    }
    cout << endl;

    return 0;
}