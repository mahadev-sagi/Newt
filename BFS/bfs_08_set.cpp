#include <iostream>
#include <vector>
#include <set>
#include <fstream>
#include <algorithm>

using namespace std;

// OD: Uses std::set to manage the frontier (sorted unique nodes)
void bfs_set(int n, const vector<vector<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    
    set<int> visited;
    set<int> frontier;
    
    frontier.insert(start);
    visited.insert(start);
    dist[start] = 0;

    while (!frontier.empty()) {
        set<int> next_frontier;
        
        for (int u : frontier) {
            for (int v : adj[u]) {
                if (visited.find(v) == visited.end()) {
                    visited.insert(v);
                    dist[v] = dist[u] + 1;
                    next_frontier.insert(v);
                }
            }
        }
        frontier = next_frontier;
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
    bfs_set(n, adj, 0, dist_impl);

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
