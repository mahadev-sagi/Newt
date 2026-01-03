import os
import glob
import shutil
import subprocess
import sys

# Configuration
SOURCE_DIR = "llb_files"
LOGS_DIR = "raw_logs_bfs"
INPUT_FILE = os.path.abspath("numbers.txt")

def run_experiments():
    if not os.path.exists(SOURCE_DIR):
        print("Error: Directory '" + SOURCE_DIR + "' not found.")
        return

    files = sorted(glob.glob(os.path.join(SOURCE_DIR, "*.ll")))

    for file_path in files:
        filename = os.path.basename(file_path)
        bm_name = filename.replace(".ll", "")

        # Resume Logic
        final_log_path = os.path.join(LOGS_DIR, bm_name)
        if os.path.exists(final_log_path):
            print("----------------------------------------")
            print("[Skipping] " + bm_name + " (Results found)")
            continue
        
        print("\n========================================")
        print("Processing: " + bm_name)
        print("========================================\n")

        # --- CRITICAL FIX: CLEANUP PREVIOUS RUN ---
        if os.path.exists("llfi"):
            print("[Auto-Cleanup] Removing leftover 'llfi' directory...")
            shutil.rmtree("llfi")
        # ------------------------------------------

        shutil.copy(file_path, filename)

        try:
            print("--- [1/3] Running Fault Injection ---")
            exit_code = subprocess.call([sys.executable, "runFi.py", bm_name, INPUT_FILE])
            
            if exit_code != 0:
                print("[Error] runFi.py failed for {0}. Skipping...".format(bm_name))
                if os.path.exists(filename): os.remove(filename)
                continue

            print("--- [2/3] Measuring SDC ---")
            exit_code = subprocess.call([sys.executable, "measurement.py"])
            
            if exit_code != 0:
                print("[Error] measurement.py failed for {0}. Skipping...".format(bm_name))
                if os.path.exists(filename): os.remove(filename)
                continue

            print("--- [3/3] Storing Results ---")
            exit_code = subprocess.call([sys.executable, "storeRes.py", bm_name])
            
            if exit_code != 0:
                print("[Error] storeRes.py failed for {0}.".format(bm_name))

        except KeyboardInterrupt:
            print("\n[Aborted] Stopping experiment sequence.")
            break
        except Exception as e:
            print("[Exception] " + str(e))

if __name__ == "__main__":
    run_experiments()
