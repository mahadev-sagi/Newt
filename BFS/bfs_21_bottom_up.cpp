#include <iostream>
#include <vector>
#include <fstream>

using namespace std;

// OD: Bottom-Up Approach. 
// Iterates unvisited nodes to find parents instead of using a Queue.
void bfs_bottom_up(int n, const vector<vector<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    
    vector<int> frontier;
    vector<int> next_frontier;
    
    dist[start] = 0;
    frontier.push_back(start);
    int level = 0;

    while (!frontier.empty()) {
        level++;
        next_frontier.clear();

        // OD: Iterate through ALL nodes to check if they are unvisited
        for (int v = 0; v < n; ++v) {
            if (dist[v] == -1) {
                // Check if any neighbor 'u' is in the current frontier
                for (int u : adj[v]) {
                    // Optimized check: is 'u' in frontier?
                    // In a real optimized bottom-up, we use a bitmap for the frontier.
                    // Here we scan for simplicity of demonstration.
                    bool parent_found = false;
                    for(int f : frontier) {
                        if(f == u) { parent_found = true; break; }
                    }
                    
                    if (parent_found) {
                        dist[v] = level;
                        next_frontier.push_back(v);
                        break; // Found a parent, stop checking neighbors
                    }
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
        adj[1].push_back(2); adj[2].push_back(1);
    } else {
        while(file >> u >> v) { if(u<n && v<n) { adj[u].push_back(v); adj[v].push_back(u); }}
    }

    vector<int> dist_impl;
    bfs_bottom_up(n, adj, 0, dist_impl);

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
