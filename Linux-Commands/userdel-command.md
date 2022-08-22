# userdel command
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