#include <iostream>
#include <vector>
#include <queue>
#include <fstream>

using namespace std;

// OD: CSR Graph Structure
struct CSRGraph {
    vector<int> row_ptr;
    vector<int> col_ind;
    int num_nodes;
};

void bfs_csr(const CSRGraph& g, int start, vector<int>& dist) {
    dist.assign(g.num_nodes, -1);
    vector<bool> visited(g.num_nodes, false);
    
    queue<int> q;
    q.push(start);
    visited[start] = true;
    dist[start] = 0;

    while (!q.empty()) {
        int u = q.front();
        q.pop();

        // OD: Iterating CSR arrays (contiguous memory)
        for (int i = g.row_ptr[u]; i < g.row_ptr[u+1]; ++i) {
            int v = g.col_ind[i];
            if (!visited[v]) {
                visited[v] = true;
                dist[v] = dist[u] + 1;
                q.push(v);
            }
        }
    }
}

// --- VERIFICATION HARNESS ---
#include <list>
int main() {
    int n = 100;
    // Build standard adj list first to convert to CSR
    vector<vector<int>> adj(n);
    ifstream file("graph.txt");
    int u, v;
    if (!file.is_open()) {
        adj[0].push_back(1); adj[1].push_back(0);
    } else {
        while(file >> u >> v) { if(u<n && v<n) { adj[u].push_back(v); adj[v].push_back(u); }}
    }

    // Convert to CSR
    CSRGraph g;
    g.num_nodes = n;
    g.row_ptr.push_back(0);
    for(int i=0; i<n; i++) {
        for(int neighbor : adj[i]) {
            g.col_ind.push_back(neighbor);
        }
        g.row_ptr.push_back(g.col_ind.size());
    }

    vector<int> dist_impl;
    bfs_csr(g, 0, dist_impl);

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
