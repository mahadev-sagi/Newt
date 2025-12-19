#include <iostream>
#include <vector>
#include <list>
#include <fstream>

using namespace std;

// --- IMPLEMENTATION ---
void bfs_level_buffered(int n, const vector<list<int>>& adj, int start, vector<int>& dist) {
    dist.assign(n, -1);
    
    // OD: Two vectors instead of a queue
    vector<int> visit;
    vector<int> visitNext;
    
    visit.push_back(start);
    dist[start] = 0;
    int currentLevel = 0;

    while(!visit.empty()) {
        currentLevel++;
        for(int u : visit) {
            for(int v : adj[u]) {
                if(dist[v] == -1) {
                    dist[v] = currentLevel;
                    visitNext.push_back(v);
                }
            }
        }
        // OD: Swap buffers
        visit = move(visitNext);
        visitNext.clear(); 
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
        adj[0].push_back(1); adj[1].push_back(2);
    } else {
        while(file >> u >> v) { if(u<n && v<n) { adj[u].push_back(v); adj[v].push_back(u); }}
    }

    vector<int> dist_impl;
    bfs_level_buffered(n, adj, 0, dist_impl);

    // Reference
    vector<int> dist_ref(n, -1);
    queue<int> q; q.push(0); dist_ref[0]=0;
    while(!q.empty()){
        int curr = q.front(); q.pop();
        for(int nb : adj[curr]){
            if(dist_ref[nb]==-1){ dist_ref[nb]=dist_ref[curr]+1; q.push(nb); }
        }
    }

    if (dist_impl == dist_ref) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
