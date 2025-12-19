#include <iostream>
#include <vector>
#include <queue>
#include <fstream>

using namespace std;

// OD: Graph is a Matrix. Neighbors found by scanning row.
void bfs_matrix(int n, const vector<vector<int>>& matrix, int start, vector<int>& dist) {
    dist.assign(n, -1);
    vector<bool> visited(n, false);
    
    queue<int> q;
    q.push(start);
    visited[start] = true;
    dist[start] = 0;

    while (!q.empty()) {
        int u = q.front();
        q.pop();

        // OD: Scan every node j to see if edge exists
        for (int v = 0; v < n; ++v) {
            if (matrix[u][v] == 1 && !visited[v]) {
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
    // Build Matrix for Impl
    vector<vector<int>> matrix(n, vector<int>(n, 0));
    // Build Adj List for Reference
    vector<vector<int>> adj(n);
    
    ifstream file("graph.txt");
    int u, v;
    if (!file.is_open()) {
        matrix[0][1] = 1; matrix[1][0] = 1;
        adj[0].push_back(1); adj[1].push_back(0);
    } else {
        while(file >> u >> v) { 
            if(u<n && v<n) { 
                matrix[u][v] = 1; matrix[v][u] = 1;
                adj[u].push_back(v); adj[v].push_back(u); 
            }
        }
    }

    vector<int> dist_impl;
    bfs_matrix(n, matrix, 0, dist_impl);

    // Reference Check
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
