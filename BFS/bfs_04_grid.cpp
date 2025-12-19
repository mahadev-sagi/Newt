#include <iostream>
#include <vector>
#include <queue>

using namespace std;

struct Point { int x, y; };

// --- IMPLEMENTATION ---
int bfs_grid(int rows, int cols, Point start, Point end) {
    int dx[] = {0, 0, 1, -1};
    int dy[] = {1, -1, 0, 0};
    
    // OD: Using implicit neighbors (math) instead of adjacency list
    vector<vector<int>> dist(rows, vector<int>(cols, -1));
    queue<Point> q;

    q.push(start);
    dist[start.x][start.y] = 0;

    while(!q.empty()) {
        Point u = q.front();
        q.pop();

        if (u.x == end.x && u.y == end.y) return dist[u.x][u.y];

        for(int i=0; i<4; i++) {
            int nx = u.x + dx[i];
            int ny = u.y + dy[i];

            if(nx >= 0 && nx < rows && ny >= 0 && ny < cols && dist[nx][ny] == -1) {
                dist[nx][ny] = dist[u.x][u.y] + 1;
                q.push({nx, ny});
            }
        }
    }
    return -1;
}

// --- VERIFICATION HARNESS ---
int main() {
    // 5x5 Grid. Start (0,0), End (4,4). Shortest path is 8 steps.
    int d = bfs_grid(5, 5, {0,0}, {4,4});
    
    if (d == 8) cout << "VERIFICATION PASSED" << endl;
    else cout << "FAILED: " << d << endl;
    return 0;
}
