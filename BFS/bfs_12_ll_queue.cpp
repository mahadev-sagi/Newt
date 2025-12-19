#include <iostream>
#include <vector>
#include <list>
#include <fstream>

using namespace std;

// OD: Uses std::list instead of std::queue/deque
void bfs_list_queue(int n, const vector<list<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    vector<bool> visited(n, false);
    
    list<int> q; // The Observed Difference
    
    visited[start] = true;
    dist[start] = 0;
    q.push_back(start);

    while(!q.empty()) {
        int u = q.front();
        q.pop_front();

        for(int v : adj[u]) {
            if(!visited[v]) {
                visited[v] = true;
                dist[v] = dist[u] + 1;
                q.push_back(v);
            }
        }
    }
}

// --- VERIFICATION HARNESS ---
#include <queue>
int main() {
    int n = 100;
    vector<list<int>> adj(n);
    ifstream file("graph.txt");
    int u, v;
    if (!file.is_open()) {
        adj[0].push_back(1); adj[1].push_back(0);
    } else {
        while(file >> u >> v) { if(u<n && v<n) { adj[u].push_back(v); adj[v].push_back(u); }}
    }

    vector<int> dist_impl;
    bfs_list_queue(n, adj, 0, dist_impl);

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
