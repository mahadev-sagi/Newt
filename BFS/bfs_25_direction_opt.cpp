#include <iostream>
#include <vector>
#include <queue>
#include <fstream>

using namespace std;

// OD: Direction Optimizing Logic
// Switches between "Push" (Queue) and "Pull" (Scan)
void bfs_direction_opt(int n, const vector<vector<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    dist[start] = 0;
    
    vector<int> frontier;
    frontier.push_back(start);
    int level = 0;
    int edges_to_check = 0; // Simulated edge count for heuristic

    // Simple heuristic threshold
    int threshold = n / 10; 

    while (!frontier.empty()) {
        level++;
        vector<int> next_frontier;

        // HEURISTIC CHECK: If frontier is huge, switch to Bottom-Up
        if (frontier.size() > threshold) {
            // --- BOTTOM-UP STEP (Pull) ---
            for (int v = 0; v < n; ++v) {
                if (dist[v] == -1) { // If unvisited
                    for (int u : adj[v]) { // Check neighbors
                        // Is neighbor in current frontier? (Simulated check)
                        bool parent_in_frontier = false;
                        for(int f : frontier) if(f==u) parent_in_frontier=true;
                        
                        if (parent_in_frontier) {
                            dist[v] = level;
                            next_frontier.push_back(v);
                            break; 
                        }
                    }
                }
            }
        } else {
            // --- TOP-DOWN STEP (Push / Standard) ---
            for (int u : frontier) {
                for (int v : adj[u]) {
                    if (dist[v] == -1) {
                        dist[v] = level;
                        next_frontier.push_back(v);
                    }
                }
            }
        }
        frontier = next_frontier;
    }
}

// --- VERIFICATION HARNESS ---
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
    bfs_direction_opt(n, adj, 0, dist_impl);

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
