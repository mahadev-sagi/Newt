#include <iostream>
#include <vector>
#include <list>
#include <queue>
#include <map>
#include <fstream>
#include <algorithm>

using namespace std;

// --- IMPLEMENTATION ---
void bfs_map_visited(int n, const vector<list<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    
    // OD: Using Map for visited tracking
    map<int, bool> visited; 
    
    queue<int> q;
    q.push(start);
    visited[start] = true;
    dist[start] = 0;

    while(!q.empty()) {
        int u = q.front();
        q.pop();

        for(int v : adj[u]) {
            // OD: Tree lookup for every neighbor check
            if(visited.find(v) == visited.end()) {
                visited[v] = true;
                dist[v] = dist[u] + 1;
                q.push(v);
            }
        }
    }
}

// --- VERIFICATION HARNESS ---
void bfs_reference(int n, const vector<list<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    vector<bool> visited(n, false);
    queue<int> q;
    
    visited[start] = true;
    dist[start] = 0;
    q.push(start);
    while(!q.empty()){
        int u = q.front(); q.pop();
        for(int v : adj[u]){
            if(!visited[v]){
                visited[v] = true;
                dist[v] = dist[u] + 1;
                q.push(v);
            }
        }
    }
}

int main() {
    // 1. Setup Graph
    int n = 100; // Small test graph
    vector<list<int>> adj(n);
    ifstream file("graph.txt");
    int u, v;
    if (!file.is_open()) {
        // Fallback graph if file missing
        adj[0].push_back(1); adj[1].push_back(2); adj[2].push_back(3);
        adj[0].push_back(4); adj[4].push_back(5);
    } else {
        while(file >> u >> v) {
            if (u < n && v < n) {
                adj[u].push_back(v);
                adj[v].push_back(u);
            }
        }
    }

    // 2. Run Implementation
    vector<int> dist_impl;
    bfs_map_visited(n, adj, 0, dist_impl);

    // 3. Run Reference
    vector<int> dist_ref;
    bfs_reference(n, adj, 0, dist_ref);

    // 4. Compare
    if (dist_impl == dist_ref) {
        cout << "VERIFICATION PASSED" << endl;
        return 0;
    } else {
        cout << "FAILED" << endl;
        return 1;
    }
}
