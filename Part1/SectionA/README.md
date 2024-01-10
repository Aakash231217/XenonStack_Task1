Make the script executable:
chmod +x internsctl


Move or copy the script to a location in your PATH, like /usr/local/bin, so it can be run from any location:
sudo cp internsctl /usr/local/bin/


To install the manual page, it should be copied to the appropriate man page section. Man pages for user commands belong in section 1:
sudo cp internsctl.1 /usr/share/man/man1/

Now, you may need to update the man database before you can access it with the man command:
sudo mandb


Once these steps are completed, you should be able to view the manual page using:
man internsctl


