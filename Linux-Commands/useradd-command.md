# useradd command

> This is a command in Linux used to add user accounts to your system.
The command will make changes to the following
- /etc/passwd
- /etc/shadow
- /etc/group
- /etc/gshadow
- creates a directory for the new user in /home

Syntax:
> sudo useradd name-of-newuser

#### Below is an image showing the output
![image showing output of useradd command in linux](/Linux-Commands/image/useraddsnip.png "useradd command output")
Adding a new user account to a Linux system with the useradd command is performed with specific settings. These settings can be viewed or altered in the /etc/default/useradd file.<br>
To set the user password, you use the syntax below;
> $ sudo passwd test_user

To create a new home directory for the user;
> sudo useradd -m test_user


