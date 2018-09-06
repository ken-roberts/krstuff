# ssh tricks

## Moving through an exposed host to an internal host.

To ssh to an internal host through an exposed host:

'''ssh -t me@exposedhost "ssh me@internalhost"'''

1. The __-t__ option tells ssh to act like a terminal is running the command.
2. The quoted string is the command to send to the internal host

To scp to an internal host through an exposed host:

'''scp -o ProxyCommand='ssh me@exposedhost nc internalhost 22' me@internalhost:/path/to/file.txt /path/to/dest/'''

or

'''scp -o ProxyCommand='ssh -W internalhost:22 me@exposedhost' me@internalhost:/path/to/file.txt /path/to/dest/'''


### Windows rdp

1. Connect to your VPN on the mac.
2. From workstation: __ssh -L 13389:<remote_rdp_target>:3389 <user>@<proxy_host>__
	* This gets you a command prompt for your proxy host. Exit the shell and the pipe is gone.
	* Your workstation listens on 13389 and sends any activity through the ssh pipe to the proxy host.
	* Your proxy host listens to the pipe and sends any data from there to the remote host on port 3389.
	* Things sent from localhost (your workstation) on 13389 will be pushed to the remote rdp target on port 3389 from the proxy host.
	* This is a 2-way pipe.
3. From workstation: rdesktop localhost:13389

