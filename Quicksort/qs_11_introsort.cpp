#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>
#include <cmath>
#include <iterator>
#include <utility>

using namespace std;

// --- IMPLEMENTATION ---

// Standard Insertion Sort for small ranges
template<typename RandomIterator, typename Compare>
void insertion_sort(RandomIterator begin, RandomIterator end, Compare comp) {
    for (RandomIterator i = begin + 1; i < end; ++i) {
        auto val = std::move(*i);
        RandomIterator j = i;
        while (j > begin && comp(val, *(j - 1))) {
            *j = std::move(*(j - 1));
            --j;
        }
        *j = std::move(val);
    }
}

// Median of 3 Pivot Selection
template<typename RandomIterator, typename Compare>
typename std::iterator_traits<RandomIterator>::value_type
choose_pivot(RandomIterator low, RandomIterator high, Compare comp) {
    RandomIterator mid = low + (high - low) / 2;
    if (comp(*mid, *low)) std::iter_swap(mid, low);
    if (comp(*high, *low)) std::iter_swap(high, low);
    if (comp(*high, *mid)) std::iter_swap(high, mid);
    return *mid;
}

// 3-Way Partition
template<typename RandomIterator, typename Compare>
std::pair<RandomIterator, RandomIterator>
partition_3way(RandomIterator low, RandomIterator high, Compare comp) {
    auto pivot = choose_pivot(low, high, comp);
    RandomIterator i = low;
    RandomIterator lt = low;
    RandomIterator gt = high;

    while (i <= gt) {
        if (comp(*i, pivot)) {
            std::iter_swap(lt++, i++);
        } else if (comp(pivot, *i)) {
            std::iter_swap(i, gt--);
        } else {
            i++;
        }
    }
    return {lt, gt};
}

// Introsort Logic
template<typename RandomIterator, typename Compare>
void introsort_loop(RandomIterator low, RandomIterator high, int depth_limit, Compare comp) {
    while (high - low > 16) {
        if (depth_limit == 0) {
            // OD: Switch to Heapsort
            std::make_heap(low, high + 1, comp);
            std::sort_heap(low, high + 1, comp);
            return;
        }

        auto p = partition_3way(low, high, comp);
        
        // Recurse on smaller partition, loop on larger (Tail Recursion Optimization)
        if (p.first - low < high - p.second) {
            introsort_loop(low, p.first - 1, depth_limit - 1, comp);
            low = p.second + 1;
        } else {
            introsort_loop(p.second + 1, high, depth_limit - 1, comp);
            high = p.first - 1;
        }
        depth_limit--;
    }
    // Final cleanup with Insertion Sort
    insertion_sort(low, high + 1, comp);
}

// Wrapper
void run_sort(vector<int>& arr) {
    if (arr.empty()) return;
    int depth_limit = 2 * log2(arr.size());
    introsort_loop(arr.begin(), arr.end() - 1, depth_limit, std::less<int>());
}

// --- VERIFICATION HARNESS ---
int main() {
    vector<int> arr;
    ifstream file("numbers.txt");
    int num;
    
    if (!file.is_open()) {
        cout << "Warning: numbers.txt not found. Using small test set." << endl;
        arr = {10, 7, 8, 9, 1, 5, 5, 20, 15, 3}; 
    } else {
        while (file >> num) arr.push_back(num);
        file.close();
    }

    run_sort(arr);

    for (size_t i = 0; i < arr.size() - 1; ++i) {
        if (arr[i] > arr[i+1]) {
            cerr << "FAILED at index " << i << endl;
            return 1;
        }
    }
    cout << "VERIFICATION PASSED" << endl;
    return 0;
}
