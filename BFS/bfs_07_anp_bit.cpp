#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>

using namespace std;

// OD: Two-Phase processing. 
void bfs_anp(int n, const vector<vector<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    
    vector<uint64_t> visited(n, 0);
    vector<uint64_t> frontier(n, 0);
    vector<uint64_t> next_frontier(n, 0); 

    uint64_t mask = 1;
    visited[start] |= mask;
    frontier[start] |= mask;
    dist[start] = 0;

    int level = 0;
    bool active = true;

    while (active) {
        active = false;
        level++;

        // PHASE 1: Blind Aggregation (Write to next_frontier)
        for (int u = 0; u < n; ++u) {
            if (frontier[u] & mask) {
                for (int v : adj[u]) {
                    // OD: No check here! Just write.
                    next_frontier[v] |= mask;
                }
            }
        }

        // PHASE 2: Process & Filter
        for (int u = 0; u < n; ++u) {
            if ((next_frontier[u] & mask) && !(visited[u] & mask)) {
                visited[u] |= mask;
                dist[u] = level;
                active = true;
            } else {
                next_frontier[u] = 0; 
            }
        }
        
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
    } else {
        while(file >> u >> v) { if(u<n && v<n) { adj[u].push_back(v); adj[v].push_back(u); }}
    }

    vector<int> dist_impl;
    bfs_anp(n, adj, 0, dist_impl);

    // Reference
    vector<int> dist_ref(n, -1);
    queue<int> q; q.push(0); dist_ref[0]=0;
    vector<bool> vis(n,false); vis[0]=true;
    while(!q.empty()){
        int curr = q.front(); q.pop();
        for(int nb : adj[curr]){
            if(!vis[nb]){ vis[nb]=true; dist_ref[nb]=dist_ref[curr]+1; q.push(nb); }
        }
    }

    if (dist_impl == dist_ref) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
