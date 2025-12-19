#include <iostream>
#include <vector>
#include <fstream>
#include <queue>
#include <algorithm>

using namespace std;

// OD: Uses bitmasks (uint64_t) to track visited status
void bfs_bit_parallel(int n, const vector<vector<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    
    // "Visited" is a vector of bitmasks
    vector<uint64_t> visited(n, 0);
    vector<uint64_t> frontier(n, 0);
    vector<uint64_t> next_frontier(n, 0);

    uint64_t source_mask = 1; // 1st bit represents our start node
    visited[start] |= source_mask;
    frontier[start] |= source_mask;
    dist[start] = 0;

    int current_level = 0;
    bool active = true;

    while (active) {
        active = false;
        current_level++;

        // OD: Iterating over nodes and doing bitwise OR logic
        for (int u = 0; u < n; ++u) {
            if (frontier[u] & source_mask) {
                for (int v : adj[u]) {
                    // Check if v is NOT visited (using bitwise logic)
                    if (!(visited[v] & source_mask)) {
                        visited[v] |= source_mask;
                        next_frontier[v] |= source_mask;
                        dist[v] = current_level;
                        active = true;
                    }
                }
            }
        }
        
        // Swap frontiers
        frontier = next_frontier;
        fill(next_frontier.begin(), next_frontier.end(), 0);
    }
}

// --- VERIFICATION HARNESS ---
#include <queue>
int main() {
    int n = 100;
    vector<vector<int>> adj(n);
    ifstream file("graph.txt");
    int u, v;
    if (!file.is_open()) {
        adj[0].push_back(1); adj[1].push_back(0);
        adj[1].push_back(2); adj[2].push_back(1);
    } else {
        while(file >> u >> v) { if(u<n && v<n) { adj[u].push_back(v); adj[v].push_back(u); }}
    }

    vector<int> dist_impl;
    bfs_bit_parallel(n, adj, 0, dist_impl);

    // Reference Check
    vector<int> dist_ref(n, -1);
    queue<int> q; q.push(0); dist_ref[0]=0;
    vector<bool> visited(n,false); visited[0]=true;
    while(!q.empty()){
        int curr = q.front(); q.pop();
        for(int nb : adj[curr]){
            if(!visited[nb]){ visited[nb]=true; dist_ref[nb]=dist_ref[curr]+1; q.push(nb); }
        }
    }

    if (dist_impl == dist_ref) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
