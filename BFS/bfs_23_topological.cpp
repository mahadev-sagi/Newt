#include <iostream>
#include <vector>
#include <list>
#include <queue>
#include <fstream>

using namespace std;

// OD: Topological Sort BFS (Kahn's Algorithm)
// Requires calculating and modifying In-Degrees
bool bfs_kahn(int n, const vector<list<int>>& adj, vector<int>& result) {
    vector<int> indegree(n, 0);
    
    // 1. Calculate In-Degrees
    for (int u = 0; u < n; u++) {
        for (int v : adj[u]) {
            indegree[v]++;
        }
    }

    // 2. Initialize Queue with 0-indegree nodes
    queue<int> q;
    for (int i = 0; i < n; i++) {
        if (indegree[i] == 0) q.push(i);
    }

    while (!q.empty()) {
        int u = q.front();
        q.pop();
        result.push_back(u);

        for (int v : adj[u]) {
            // OD: Decrement and Check Logic
            indegree[v]--;
            if (indegree[v] == 0) {
                q.push(v);
            }
        }
    }

    // If result size != n, the graph has a cycle (not a DAG)
    return result.size() == n;
}

// --- VERIFICATION HARNESS ---
int main() {
    int n = 5;
    vector<list<int>> adj(n);
    
    // Create a Directed Acyclic Graph (DAG) for verification
    // 0->1, 0->2, 1->3, 2->3, 3->4
    adj[0].push_back(1); 
    adj[0].push_back(2);
    adj[1].push_back(3); 
    adj[2].push_back(3);
    adj[3].push_back(4);

    vector<int> result;
    bool isDAG = bfs_kahn(n, adj, result);

    // Verify ordering
    // 0 must come before 1 and 2
    // 4 must be last
    bool passed = true;
    if (result.empty() || result.front() != 0 || result.back() != 4) passed = false;
    
    if (passed) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    
    return 0;
}
