#!/bin/bash

# Function to run tests in a specific directory
run_tests_in_dir() {
    target_dir="$1"
    if [ -d "$target_dir" ]; then
        echo "----------------------------------------"
        echo " Testing in: $target_dir"
        echo "----------------------------------------"
        cd "$target_dir" || exit

        # Check if any .cpp files exist to avoid errors
        count=$(ls *.cpp 2>/dev/null | wc -l)
        if [ "$count" -eq 0 ]; then
            echo "   (No .cpp files found)"
            cd ..
            return
        fi

        # Loop through all cpp files
        for file in *.cpp; do
            # Compile (silence warnings, use C++14 for broad compatibility)
            # -w suppresses all warnings so you only see errors/output
            clang++ -std=c++1y -w "$file" -o "test_exec" -pthread
            
            if [ $? -eq 0 ]; then
                # Run with 5s timeout to catch infinite loops
                # 124 is the exit code for timeout
                output=$(timeout 5s ./test_exec)
                exit_code=$?

                if [ $exit_code -eq 124 ]; then
                     echo "[TIMEOUT] $file (Infinite Loop)"
                elif [[ "$output" == *"VERIFICATION PASSED"* ]]; then
                     echo "[PASS]    $file"
                else
                     echo "[FAIL]    $file"
                     # Uncomment the next line to debug why it failed
                     # echo "          Output: $output" 
                fi
            else
                echo "[ERROR]   $file failed to compile"
            fi
            
            # Clean up the executable
            rm -f test_exec
        done

        # Go back to main folder
        cd ..
    else
        echo "[WARNING] Folder '$target_dir' not found!"
    fi
}

# Function to simply check if the dataset exists (No Copying)
check_dataset() {
    dir="$1"
    if [ -d "$dir" ]; then
        if [ -f "$dir/numbers.txt" ]; then
            echo "[OK] Found numbers.txt in $dir"
        else
            echo "[WARNING] numbers.txt NOT found in $dir. Tests will use fallback data."
        fi
    fi
}

echo "========================================"
echo "      VERIFYING DATASETS (numbers.txt)  "
echo "========================================"

# Check for datasets without overwriting them
check_dataset "Quicksort"
check_dataset "InorderTraversals"
check_dataset "Postorder Traversals"

echo ""
echo "========================================"
echo "      STARTING VERIFICATION             "
echo "========================================"

# 1. Quicksort Algorithms
run_tests_in_dir "Quicksort"
echo ""

# 2. BFS Algorithms
run_tests_in_dir "BFS"
echo ""

# 3. Inorder Traversals
run_tests_in_dir "InorderTraversals"
echo ""

# 4. Postorder Traversals
run_tests_in_dir "Postorder Traversals"

echo "========================================"
echo "           DONE                         "
echo "========================================"

