#include <iostream>
#include <vector>
#include <list>
#include <queue>
#include <fstream>

using namespace std;

// OD: Uses Priority Queue (Dijkstra-style).
// Sorts by {Distance, NodeID} to ensure layers are processed correctly.
void bfs_prio(int n, const vector<list<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    
    // Min-heap storing {distance, node_id}
    // This ensures we process nodes with smaller distances first (restoring BFS behavior)
    priority_queue<pair<int, int>, vector<pair<int, int>>, greater<pair<int, int>>> pq;
    
    dist[start] = 0;
    pq.push({0, start});

    while(!pq.empty()) {
        int d = pq.top().first;
        int u = pq.top().second;
        pq.pop();

        // If we found a shorter path to u before processing this one, skip
        if (d > dist[u] && dist[u] != -1) continue;

        for(int v : adj[u]) {
            if(dist[v] == -1 || dist[v] > dist[u] + 1) {
                dist[v] = dist[u] + 1;
                pq.push({dist[v], v});
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
        while(file >> u >> v) { if(u<n && v<n) { adj[u].push_back(v); adj[v].push_back(u); }}
    }

    vector<int> dist_impl;
    bfs_prio(n, adj, 0, dist_impl);

    // Reference (Standard Queue BFS)
    vector<int> dist_ref(n, -1);
    queue<int> q; q.push(0); dist_ref[0]=0;
    
    // Standard BFS for comparison
    while(!q.empty()){
        int curr = q.front(); q.pop();
        for(int nb : adj[curr]){
            if(dist_ref[nb] == -1){ 
                dist_ref[nb] = dist_ref[curr] + 1; 
                q.push(nb); 
            }
        }
    }

    if (dist_impl == dist_ref) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}

