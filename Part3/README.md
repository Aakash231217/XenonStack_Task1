To get file information:
internsctl file getinfo <file-name>


To obtain specific file information using options:
internsctl file getinfo [options] <file-name>


To obtain the size of the specified file:
internsctl file getinfo --size <file-name>


To obtain the permissions of the specified file:
internsctl file getinfo --permissions <file-name>

To obtain the owner of the specified file:
internsctl file getinfo --owner <file-name>

To obtain the last modified time of the specified file:
internsctl file getinfo --last-modified <file-name>


 save the script to a file named internsctl, make it executable (using chmod +x /path/to/internsctl),
and store the script in a directory that's on your system's PATH, such as /usr/local/bin/.

