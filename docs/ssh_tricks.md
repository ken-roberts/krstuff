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
