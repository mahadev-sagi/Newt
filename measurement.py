# get the SDC rate of given instruction
import filecmp
import os 

# get the SDC rate of given instruction
def get_SDC_number():
    temp_path = "./llfi/"
    file_gld_out = temp_path + "baseline/golden_std_output"
    run_count = 1000
    SDC_count = 0
    benign_count = 0
    crash_count = 0
    hang_count = 0
    # print("\rChecking files in " + temp_path + " ......")
    for f in range(run_count):
        file_out = temp_path + "std_output" + "/std_outputfile-run-0-" + str(f)
        try:
            file_err = open(temp_path + "error_output" + "/errorfile-run-0-" + str(f))
            error_msg = file_err.read()
            file_err.close()
        except IOError: # no error output
            error_msg = ""
        if("hang" in error_msg):
            hang_count += 1
        elif("crash" in error_msg):
            crash_count += 1
        elif(filecmp.cmp(file_out, file_gld_out)):
            benign_count += 1
        else:
            SDC_count += 1
    return SDC_count,hang_count,crash_count,benign_count

SDC_count,hang_count,crash_count,benign_count = get_SDC_number()
print(SDC_count)
print(hang_count)
print(crash_count)
print(benign_count)

# Write files
write_sdc_rate = open("SDC-number.txt", 'w')
write_sdc_rate.write(str(SDC_count)+"\n")
write_sdc_rate.write(str(hang_count)+"\n")
write_sdc_rate.write(str(crash_count)+"\n")
write_sdc_rate.write(str(benign_count)+"\n")

write_sdc_rate.close()