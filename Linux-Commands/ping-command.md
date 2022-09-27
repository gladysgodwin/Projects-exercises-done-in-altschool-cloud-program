# ping command
> ping which stands for ***Packet internet Groper***. It is a command used to check the network connectivity between host and server/host. The command sends small ICMP packets to the remote host and waits for the response.

#### below is an image showing how the ping command is used
![This image shows the output of ping command](/Linux-Commands/image/pingsnip.png "ping command using google.com")
Ctrl+C is used to stop the command from running. there are other ways to use ping command without stopping it manually
- `ping -c google.com` :you can use the -c option.With this, you can specify the number of packets the ping command should send before stopping automatically.
- `ping -w 10 google.com` :you can use this to set for how long the packets will be sent.For example, if you want to send ping packets for only 10 seconds.