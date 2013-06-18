create-linux-user
=================

A simple bash shell script to create a linux user and optionally make them a sudoer

Tested on Ubuntu 13.04 (GNU/Linux 3.8.0-19-generic x86_64)

Sample usage:

root@myserver:/home/root/bin$ ./create-user.sh
### Enter new user name: john
Adding user `john' ...
Adding new group `john' (1002) ...
Adding new user `john' (1002) with group `john' ...
Creating home directory `/home/john' ...
Copying files from `/etc/skel' ...
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
Changing the user information for john
Enter the new value, or press ENTER for the default
	Full Name []: John
	Room Number []:
	Work Phone []:
	Home Phone []:
	Other []:
Is the information correct? [Y/n] Y
### make new user a sudoer? (y/n) y
Adding user `john' to group `sudo' ...
Adding user john to group sudo
Done.

john@brokenpipe:/home/root/bin$ whoami
john