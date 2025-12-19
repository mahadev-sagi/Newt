#include <iostream>
#include <vector>
#include <queue>
#include <fstream>

using namespace std;

// OD: No boolean visited array. Uses integer comparison for state.
void bfs_dist_array(int n, const vector<vector<int>>& adj, int start, vector<int>& dist) {
    // Initialize with -1 (Unvisited)
    dist.assign(n, -1);
    
    queue<int> q;
    q.push(start);
    dist[start] = 0; // 0 means visited

    while(!q.empty()) {
        int u = q.front();
        q.pop();

        for(int v : adj[u]) {
            // OD: Integer comparison check
            if(dist[v] == -1) {
                dist[v] = dist[u] + 1;
                q.push(v);
            }
        }
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
    bfs_dist_array(n, adj, 0, dist_impl);

    // Reference
    vector<int> dist_ref(n, -1);
    queue<int> q; q.push(0); dist_ref[0]=0;
    while(!q.empty()){
        int curr = q.front(); q.pop();
        for(int nb : adj[curr]){
            if(dist_ref[nb] == -1){ dist_ref[nb]=dist_ref[curr]+1; q.push(nb); }
        }
    }

    if (dist_impl == dist_ref) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
