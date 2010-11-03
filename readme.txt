Ken Roberts 2010-11-02

This project is my handy shortcuts for developing grails on a mac.

In order to use everything here, you need to check this out to some directory on your system.  The default location
is into your home directory, but you can use a little more configuration to put it anywhere.

To accept the entire project, add this to your .bash_profile:
-------------------------------------------------------
# Pull in krstuff profile
if [ -f $HOME/krstuff/etc/profile ];
	. $HOME/krstuff/etc/profile
fi
-------------------------------------------------------

This should go in fairly close to the top of the file, before any reference to /opt/local/etc/bash_completion.

As well, any aliases or definitions you make after the krstuff configuration goes in will override what I
have, as is proper.

The setup is a bit more complex than would normally be necessary, but I tried to make it so you could take it in
chunks if you like.

Thanks.