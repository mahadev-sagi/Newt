#include <iostream>
#include <vector>
#include <queue>
#include <fstream>
#include <map>

using namespace std;

// OD: Struct with real pointers
struct Node {
    int id;
    vector<Node*> neighbors;
};

void bfs_pointer(Node* start, int n, vector<int>& dist) {
    dist.assign(n, -1);
    vector<bool> visited(n, false);
    
    queue<Node*> q;
    q.push(start);
    
    visited[start->id] = true;
    dist[start->id] = 0;

    while (!q.empty()) {
        Node* u = q.front();
        q.pop();

        for (Node* v : u->neighbors) {
            // OD: Dereferencing pointer v
            if (!visited[v->id]) {
                visited[v->id] = true;
                dist[v->id] = dist[u->id] + 1;
                q.push(v);
            }
        }
    }
}

// --- VERIFICATION HARNESS ---
int main() {
    int n = 100;
    vector<Node> nodes(n);
    for(int i=0; i<n; i++) nodes[i].id = i;

    vector<vector<int>> adj_ref(n);
    ifstream file("graph.txt");
    int u, v;
    if (!file.is_open()) {
        nodes[0].neighbors.push_back(&nodes[1]); nodes[1].neighbors.push_back(&nodes[0]);
        adj_ref[0].push_back(1); adj_ref[1].push_back(0);
    } else {
        while(file >> u >> v) { 
            if(u<n && v<n) { 
                nodes[u].neighbors.push_back(&nodes[v]);
                nodes[v].neighbors.push_back(&nodes[u]);
                adj_ref[u].push_back(v);
                adj_ref[v].push_back(u);
            }
        }
    }

    vector<int> dist_impl;
    bfs_pointer(&nodes[0], n, dist_impl);

    // Reference
    vector<int> dist_ref(n, -1);
    queue<int> q; q.push(0); dist_ref[0]=0;
    vector<bool> vis(n,false); vis[0]=true;
    while(!q.empty()){
        int curr = q.front(); q.pop();
        for(int nb : adj_ref[curr]){
            if(!vis[nb]){ vis[nb]=true; dist_ref[nb]=dist_ref[curr]+1; q.push(nb); }
        }
    }

    if (dist_impl == dist_ref) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED" << endl;
    return 0;
}
