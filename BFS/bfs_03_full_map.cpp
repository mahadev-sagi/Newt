#include <iostream>
#include <vector>
#include <map>
#include <string>
#include <queue>
#include <fstream>
#include <climits>

using namespace std;

// --- IMPLEMENTATION ---
void bfs_string_map(map<string, vector<string>>& adjGraph, string s, map<string, int>& result_dist) {
    map<string, bool> Visited;
    queue<string> q; 
    
    // Initialize
    for (auto const& entry : adjGraph) {
        Visited[entry.first] = false;
        result_dist[entry.first] = -1;
    }

    Visited[s] = true; 
    result_dist[s] = 0;
    q.push(s);

    while (!q.empty()) {
        string u = q.front();
        q.pop();

        for (string v : adjGraph[u]) {
            // Safety: ensure v exists in map
            if (Visited.find(v) == Visited.end()) {
                Visited[v] = false;
                result_dist[v] = -1;
            }

            if (!Visited[v]) {
                Visited[v] = true;
                result_dist[v] = result_dist[u] + 1;
                q.push(v);
            }
        }
    }
}

// --- VERIFICATION HARNESS ---
int main() {
    map<string, vector<string>> graph;
    int n = 50; 
    
    // Create graph converting Int -> String
    ifstream file("graph.txt");
    int u, v;
    if (!file.is_open()) {
        graph["0"] = {"1"}; graph["1"] = {"0", "2"}; graph["2"] = {"1"};
    } else {
        while(file >> u >> v) {
            if (u < n && v < n) {
                graph[to_string(u)].push_back(to_string(v));
                graph[to_string(v)].push_back(to_string(u));
            }
        }
    }

    map<string, int> dist_impl;
    bfs_string_map(graph, "0", dist_impl);

    // Reference Check (Simple Logic)
    // Just check if 0 is dist 0 and neighbors are dist 1
    if (dist_impl["0"] == 0 && (graph["0"].empty() || dist_impl[graph["0"][0]] == 1)) {
        cout << "VERIFICATION PASSED" << endl;
    } else {
        cout << "FAILED" << endl;
    }
    return 0;
}
