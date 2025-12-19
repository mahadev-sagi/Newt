#include <iostream>
#include <vector>
#include <fstream>

using namespace std;

// --- IMPLEMENTATION ---
struct Node {
    int val;
    Node* next;
};

struct GraphLL {
    int V;
    Node** head; // Array of pointers to linked lists
    
    GraphLL(int V) {
        this->V = V;
        head = new Node*[V];
        for(int i=0; i<V; i++) head[i] = nullptr;
    }
    
    void addEdge(int src, int dest) {
        Node* newNode = new Node{dest, head[src]};
        head[src] = newNode;
        // Undirected
        Node* newNode2 = new Node{src, head[dest]};
        head[dest] = newNode2;
    }
};

// OD: Fixed size circular queue
struct CustomQueue {
    int* arr;
    int front, rear, capacity;
    CustomQueue(int c) {
        capacity = c;
        arr = new int[c];
        front = 0; rear = 0;
    }
    void push(int x) { arr[rear++] = x; } // Simplified for BFS (no wrap needed if capacity >= V)
    void pop() { front++; }
    int top() { return arr[front]; }
    bool empty() { return front == rear; }
};

void bfs_custom(GraphLL& g, int start, vector<int>& dist) {
    dist.assign(g.V, -1);
    
    CustomQueue q(g.V + 1);
    bool* visited = new bool[g.V];
    for(int i=0; i<g.V; i++) visited[i] = false;

    visited[start] = true;
    dist[start] = 0;
    q.push(start);

    while(!q.empty()) {
        int u = q.top();
        q.pop();

        // OD: Traversing manual linked list
        Node* curr = g.head[u];
        while(curr != nullptr) {
            int v = curr->val;
            if(!visited[v]) {
                visited[v] = true;
                dist[v] = dist[u] + 1;
                q.push(v);
            }
            curr = curr->next;
        }
    }
    delete[] visited;
}

// --- VERIFICATION HARNESS ---
#include <queue>
int main() {
    int n = 100;
    GraphLL g(n);
    // Reference graph for checking
    vector<vector<int>> adj_ref(n); 
    
    ifstream file("graph.txt");
    int u, v;
    if (!file.is_open()) {
        g.addEdge(0, 1); adj_ref[0].push_back(1); adj_ref[1].push_back(0);
        g.addEdge(1, 2); adj_ref[1].push_back(2); adj_ref[2].push_back(1);
    } else {
        while(file >> u >> v) {
            if (u < n && v < n) {
                g.addEdge(u, v);
                adj_ref[u].push_back(v);
                adj_ref[v].push_back(u);
            }
        }
    }

    vector<int> dist_impl;
    bfs_custom(g, 0, dist_impl);

    // Reference Check
    vector<int> dist_ref(n, -1);
    queue<int> q;
    q.push(0); dist_ref[0] = 0;
    while(!q.empty()){
        int curr = q.front(); q.pop();
        for(int neighbor : adj_ref[curr]){
            if(dist_ref[neighbor] == -1){
                dist_ref[neighbor] = dist_ref[curr] + 1;
                q.push(neighbor);
            }
        }
    }

    if (dist_impl == dist_ref) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
