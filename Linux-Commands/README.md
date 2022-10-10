# Exercise 2

#### Task: Research online for 10 more linux commands aside the ones already mentioned in this module. Submit using your altschool-cloud-exercises project, explaining what each command is used for with examples of how to use each and example screenshots of using each of them.

#### Instruction: Submit your work in a folder for this exercise in your altschool-cloud-exercises project. You will need to learn how to embed images in markdown files.

# See below for **Answers**

## basename command

> The basename command print the last portion of the file name on the terminal.
#### The below image shows the ouput.<br>
![images displaying basename command](/Linux-Commands/image/basesnip.png "photo showing screenshot of a code")

## cal command

> This command prints the current month calender in the linux terminal.
#### The below image shows the ouput
![An Image showing the use of cal command](/Linux-Commands/image/calsnip.png "image showing output of cal command")

## chmod command
> Chmod stands for change mode. This command is used to change the access permission of files and directories. There are three file permission in linux:
- read(r)
- write(w)
- execute(x)

#### The below Image shows the steps I followed to make my files executable.<br>
![Image showing the use of chmod command](/Linux-Commands/image/chmodsnip.png "This image shows the final output of chmod command")<br>
##### Explanation
- I created some files in a folder.
- Then used the command `ls -l` to see the permissions the files has.<br>
##### See image below
![Image showing the files created and its permissions](/Linux-Commands/image/chmodstepsnip.png "Image showing files created and its permissions")<br>
The above image showed both files already has read and write permissions.
- Then I used the command `chmod o+x *.txt` to add execute permission to both files and used `ls -l` to see the added permission.<br>
##### Below is an image showing the last step
![Image showing the the use of chmod to add permission](/Linux-Commands/image/finasnip.png "final output")

## du command

> du stands for disk usage. This command prints the disk usage of every file and sub directory in a given directory.

##### This image below shows the output.<br>
![Image showing the use of du command and its output](/Linux-Commands/image/dusnip.png "output of du command")

## grep command

> grep stands for ***global search for regular expression and print out***. The command is used to search file for a particular pattern of characters, and displays all lines that contain that pattern.
##### syntax
    grep ful buid.txt

The ful in the syntax represent the pattern I am checking for while the buid.txt represent the file I am checking.
##### The below image shows the output
![Image showing the use of grep command](/Linux-Commands/image/grepsnip.png "output using grep command")

## ping command
> ping which stands for ***Packet internet Groper***. It is a command used to check the network connectivity between host and server/host. The command sends small ICMP packets to the remote host and waits for the response.

#### below is an image showing how the ping command is used
![This image shows the output of ping command](/Linux-Commands/image/pingsnip.png "ping command using google.com")
Ctrl+C is used to stop the command from running. there are other ways to use ping command without stopping it manually
- `ping -c google.com` :you can use the -c option.With this, you can specify the number of packets the ping command should send before stopping automatically.
- `ping -w 10 google.com` :you can use this to set for how long the packets will be sent.For example, if you want to send ping packets for only 10 seconds.

## useradd command

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

## userdel command
> This is used to delete a user account from the system.
Syntax:
> userdel user_test
#### below is an image showing how i removed the user I created previously
![Image showing output of userdel command](/Linux-Commands/image/usedelsnip.png "image showing the use of userdel to delete a user")<br>
To remove the user’s home directory at the same time, add the -r option:

> $ userdel -r username

The userdel command won’t work if the user is currently logged in or has processes running under the account. In this case, you have two options. You can either kill all the user’s processes with the killall command or use the -f option with the userdel command to force deletion.
> killall -u username<br>
> userdel -f username

## wc command
> The wc command which stands for ***word count*** is used to find out the number of new lines, word count, byte and characters count in a file specified by the file arguments. <br>By default it displays four columnar output.
First column shows number of lines present in a file specified, second column shows number of words present in the file, third column shows number of characters present in file and fourth column itself is the file name which are given as argument.
#### Below is an image showing the use of wc command
![image showing the output of wc command](/Linux-Commands/image/wcsnip.png "Images showing the output of wc command")

## wget command

> Wget is the non-interactive network downloader which is used to download files from the server even when the user has not logged on to the system and it can work in the background without hindering the current process. 
#### below is an image showing the output of wget command

![Image showing the output of wget command](/Linux-Commands/image/wgetsnip.png)