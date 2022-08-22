# chmod command
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



