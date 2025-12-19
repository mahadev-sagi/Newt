import sys
import os
import shutil
import csv
import glob

# Configuration
MASTER_CSV = "master_results.csv"
LOGS_DIR = "raw_logs"

def store_experiment_data(algo_name):
    print("--- Processing Results for: " + algo_name + " ---")
    
    # 1. READ STATS from SDC-number.txt
    if not os.path.exists("SDC-number.txt"):
        print("[Error] SDC-number.txt not found. Did measurement.py run?")
        return

    with open("SDC-number.txt", "r") as f:
        lines = [line.strip() for line in f.readlines()]
    
    if len(lines) < 4:
        print("[Error] SDC-number.txt is incomplete/empty.")
        return

    sdc = lines[0]
    hang = lines[1]
    crash = lines[2]
    benign = lines[3]

    # 2. UPDATE MASTER CSV
    file_exists = os.path.exists(MASTER_CSV)
    
    with open(MASTER_CSV, "a") as csvfile:
        writer = csv.writer(csvfile)
        if not file_exists:
            writer.writerow(["Algorithm", "SDC", "Hang", "Crash", "Benign"])
        writer.writerow([algo_name, sdc, hang, crash, benign])
    
    print("[Saved] Stats added to master_results.csv")

    # 3. PREPARE LOG DESTINATION
    target_folder = os.path.join(LOGS_DIR, algo_name)
    if os.path.exists(target_folder):
        shutil.rmtree(target_folder) # Clear old runs if any
    
    # 4. MOVE THE LOGS (The 'llfi' folder)
    if os.path.exists("llfi"):
        shutil.move("llfi", target_folder)
        print("[Moved] Log folder moved to " + target_folder)
    else:
        print("[Warning] No 'llfi' folder found.")

    # 5. MOVE SPECIFIC FILES TO KEEP
    # Updated with the correct filename you provided
    files_to_save = ["llfi.stat.totalindex.txt", "llfi.log.compilation.txt"]
    
    for file_name in files_to_save:
        if os.path.exists(file_name):
            shutil.move(file_name, os.path.join(target_folder, file_name))
            print("[Moved] " + file_name + " stored safely.")
    
    # 6. DELETE ALL REMAINING LLFI JUNK FILES
    # This deletes anything starting with "llfi." that wasn't saved above
    for junk_file in glob.glob("llfi.*"):
        os.remove(junk_file)
        print("[Cleaned] Deleted junk file: " + junk_file)

    # 7. CLEANUP TEMP FILES
    if os.path.exists("SDC-number.txt"):
        os.remove("SDC-number.txt")
        print("[Cleaned] Deleted SDC-number.txt")

    local_ll_file = algo_name + ".ll"
    if os.path.exists(local_ll_file):
        os.remove(local_ll_file)
        print("[Cleaned] Deleted local file: " + local_ll_file)

    print("--- Done! Directory is clean. ---")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python store_results.py <algorithm_name>")
    else:
        store_experiment_data(sys.argv[1])
