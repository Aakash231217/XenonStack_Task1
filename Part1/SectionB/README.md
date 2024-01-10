To get CPU information:
internsctl cpu


To get memory information:
internsctl memory

These commands will output information similar to lscpu and free commands, providing CPU and memory details, respectively.

Be sure to save the updated script to a file named internsctl, and ensure it's executable (using chmod +x /path/to/internsctl). 
Also, make sure the script is stored in a directory that's on your system's PATH, such as /usr/local/bin/.