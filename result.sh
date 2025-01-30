# Part A: Basic System Information and Navigation

# 1. Display the current hostname of the system
# The `hostname` command will print the system's current hostname.
hostname

# 2. Change the system hostname to 'CS-Server' and verify the change
# We use `hostnamectl` to change the system's hostname.
sudo hostnamectl set-hostname CS-Server
# Verify the hostname change.
hostname


# Part B: User Information

# 3. Display the name of the user you are currently logged in as
# `whoami` will show the username of the current user.
whoami

# 4. Display the current date and time
# `date` shows the system's current date and time.
date


# Part C: Directory Management

# 5. Create a new directory named 'CS' in your home directory using the absolute path
# The `mkdir` command creates a directory. Absolute path is used to specify the location.
mkdir /home/$(whoami)/CS

# 6. Navigate to the 'CS' directory using a relative path
# Using `cd` to change to the 'CS' directory which is a subdirectory of the current working directory.
cd CS

# 7. Inside the 'CS' directory, create two subdirectories: 'Students' and 'JKLU'
# We can create multiple directories with a single `mkdir` command.
mkdir Students JKLU


# Part D: File Operations

# 8. Navigate to the 'Students' directory using a relative path
# Change directory into 'Students' using a relative path.
cd Students

# 9. Create an empty file named 'student1.txt' inside the 'Students' directory
# The `touch` command creates an empty file.
touch student1.txt

# 10. Display the contents of 'student1.txt' (it should be empty)
# The `cat` command shows the contents of a file.
cat student1.txt

# 11. Using redirection, add the text "This is student 1 data." into the 'student1.txt' file
# `echo` sends text to a file using the `>` operator, overwriting existing contents.
echo "This is student 1 data." > student1.txt

# 12. Display the contents of 'student1.txt' again to verify the text was added
cat student1.txt

# 13. Append additional text "Additional student data." to 'student1.txt' using redirection
# The `>>` operator appends text to the file without overwriting the previous content.
echo "Additional student data." >> student1.txt

# 14. Display the file content again to confirm the appended data
cat student1.txt


# Part E: File Management

# 15. Create another file named 'student2.txt' inside the 'Students' directory
touch student2.txt

# 16. Move 'student1.txt' from the 'Students' directory to the 'JKLU' directory using the absolute path
# `mv` is used to move the file. Absolute path is used to move the file to a different location.
mv /home/$(whoami)/CS/Students/student1.txt /home/$(whoami)/CS/JKLU/

# 17. Rename 'student2.txt' to 'student3.txt' inside the 'Students' directory
# We can rename the file using `mv` with the old name and new name.
mv student2.txt student3.txt

# 18. Copy 'student3.txt' from 'Students' to the 'JKLU' directory using the absolute path
# The `cp` command is used to copy files.
cp /home/$(whoami)/CS/Students/student3.txt /home/$(whoami)/CS/JKLU/


# Part F: File Deletion and Permissions

# 19. Remove 'student3.txt' from the 'JKLU' directory using the absolute path
# `rm` is used to remove a file.
rm /home/$(whoami)/CS/JKLU/student3.txt

# 20. Navigate to the 'JKLU' directory using the relative path and delete the 'student1.txt' file
# Change to 'JKLU' directory and delete the file.
cd ../JKLU
rm student1.txt


# Part G: Links and Shortcuts

# 21. Create a symbolic link to the 'Students' directory inside 'JKLU'. Name it 'students_link'
# The `ln -s` command creates a symbolic (soft) link.
ln -s /home/$(whoami)/CS/Students /home/$(whoami)/CS/JKLU/students_link

# 22. Create a hard link to any file (For example, creating a hard link for student3.txt)
# The `ln` command creates a hard link to the file.
ln /home/$(whoami)/CS/Students/student3.txt /home/$(whoami)/CS/JKLU/student3_hardlink.txt


# Part H: System Maintenance

# 23. Update the system package list using the correct command
# `apt update` updates the list of available packages.
sudo apt update

# 24. Upgrade all installed packages on the system using the correct command
# `apt upgrade` upgrades all installed packages to the latest version.
sudo apt upgrade


# Part I: Networking

# 25. Use ping to test the network connection by pinging a public domain (e.g., google.com)
# `ping` sends packets to test the connection to a server.
ping google.com

# 26. Use nslookup to resolve the IP address of a public domain (e.g., google.com). Save the result to a file named nslookup_result.txt
# `nslookup` resolves domain names to IP addresses, and we redirect the result to a file.
nslookup google.com > nslookup_result.txt


# Part J: Search, Filter, and Alias

# 30. Create an alias cls for the clear command
# The `alias` command allows you to define shortcuts for commands.
alias cls='clear'

# 31. Use the find command to search for any file with the name student1.txt starting from the root directory
# `find` is used to search for files. It starts from the root (/) directory and looks for 'student1.txt'.
sudo find / -name student1.txt

# 32. Use a pipeline to combine cat and grep commands to search for the word "data" in the 'student1.txt' file
# `cat` prints the content of the file, and `grep` filters for lines containing the word "data".
cat student1.txt | grep "data"


# Part K: Pipelining and Redirection

# 35. Use a pipeline to list all files in the 'CS/JKLU' directory and search for the term "student" using `ls` & `grep`
# `ls` lists files, and `grep` filters files containing the term "student".
ls /home/$(whoami)/CS/JKLU | grep "student"

# 36. Redirect the output of the `date` command to a file named `date.txt`
# `>` redirects output to a file, overwriting the file if it exists.
date > date.txt

# 37. Append the output of the `hostname` command to the `date.txt` file
# `>>` appends output to the file without overwriting it.
hostname >> date.txt
