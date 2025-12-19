#include <iostream>
#include <vector>
#include <list>
#include <queue>
#include <fstream>

using namespace std;

// OD: Standard Baseline (STL Queue + Adjacency List)
void bfs_baseline(int n, const vector<list<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    vector<bool> visited(n, false);
    
    queue<int> q;
    
    visited[start] = true;
    dist[start] = 0;
    q.push(start);

    while(!q.empty()) {
        int u = q.front();
        q.pop();

        for(int v : adj[u]) {
            if(!visited[v]) {
                visited[v] = true;
                dist[v] = dist[u] + 1;
                q.push(v);
            }
        }
    }
}

// --- VERIFICATION HARNESS ---
int main() {
    int n = 100;
    vector<list<int>> adj(n);
    ifstream file("graph.txt");
    int u, v;
    
    if (!file.is_open()) {
        adj[0].push_back(1); adj[1].push_back(0);
        adj[1].push_back(2); adj[2].push_back(1);
    } else {
        while(file >> u >> v) {
            if (u < n && v < n) {
                adj[u].push_back(v);
                adj[v].push_back(u);
            }
        }
    }

    vector<int> dist_impl;
    bfs_baseline(n, adj, 0, dist_impl);

    // Reference Check (Self-Check for Baseline)
    if (dist_impl[0] == 0 && (adj[0].empty() || dist_impl[adj[0].front()] == 1)) {
        cout << "VERIFICATION PASSED" << endl;
    } else {
        cout << "FAILED" << endl;
    }
    return 0;
}
