import os
import subprocess

# Configuration
SOURCE_DIR = "BFS"
OUTPUT_DIR = "llb_files"

# 1. Create the output directory if it doesn't exist
if not os.path.exists(OUTPUT_DIR):
    os.makedirs(OUTPUT_DIR)
    print("Created directory: {}".format(OUTPUT_DIR))

# 2. Loop through all .cpp files in the source directory
print("Compiling files from '{}' to '{}'...".format(SOURCE_DIR, OUTPUT_DIR))
try:
    files = [f for f in os.listdir(SOURCE_DIR) if f.endswith(".cpp")]
    files.sort()
except OSError:
    print("Error: Directory '{}' not found.".format(SOURCE_DIR))
    files = []

for cpp_file in files:
    # Construct filenames
    source_path = os.path.join(SOURCE_DIR, cpp_file)
    ll_filename = cpp_file.replace(".cpp", ".ll")
    output_path = os.path.join(OUTPUT_DIR, ll_filename)
    
    # 3. Run clang command with C++11 enabled
    # Clang 3.4 supports this flag perfectly.
    cmd = ["clang++", "-emit-llvm", "-S", "-std=c++11", "-fno-exceptions", "-o", output_path, source_path]
    
    try:
        subprocess.check_call(cmd)
        print(" [OK] Compiled: {}".format(ll_filename))
    except subprocess.CalledProcessError:
        print(" [FAIL] Could not compile: {}".format(cpp_file))

print("\nDone! You now have .ll files.")
