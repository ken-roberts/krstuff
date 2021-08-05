Ken Roberts 2010-11-02
modified 2021-08-04 Ken Roberts

Installing:

1. You will need root access.
2. Check the code out in your home directory.
3. sudo mv krstuff /usr/local
5. cp -r /usr/local/krstuff/skel/`uname -s` $HOME/.krstuff
6. Edit $HOME/.krstuff/profile so KRSTUFF_HOME reflects the location of the KRSTUFF directory in step 3.
7. Add the next snippet to your .bash_profile, near the top:

```
# Pull in krstuff profile
[[ -s "$HOME/.krstuff/profile" ]] && source "$HOME/.krstuff/profile"
```

This sets things up for all users who source the file the same way.

Special provision is made for root user.

The prompt changes color when you are root, or when you have changed from your original login name.

I'm trying to set this up in a way that is useful on any POSIX operating system, within reason.


# How it starts

	# Pull in the krstuff configuration.
	[[ -s '/usr/local/krstuff/bash_profile.sh' ]] && source '/usr/local/krstuff/bash_profile.sh'

1. You add the above lines to the very end of your ~/.bash\_profile.
2. This file pulls in configuration for various things you like, both mine and yours.
3. While I provide lots of configs, YOU decide which ones to use.

## Configuration

1. In your $HOME directory, you create a .krstuff directory by executing an install script.
2. The install script sets everything up for your user, everything turned on.
3. You look in 2 directories and remove things you don't like.

### ~/.krstuff/bash\_profile.d

This is the heart of bash configuration scripts. What you see here is a symbolic link to every file in $KRSTUFF\_HOME/etc.d/.
The bash\_profile.sh file will pull each of these, in order, into your .bash\_profile configuration.

The beginning of the filenames are special.  If the filename matches S\*.sh then they are "enabled." They are executed in
alphabetical order, and anything not matching the S\*.sh pattern are ignored. 

To turn off a script, change the first character to something like K. This keeps the file there, so you know it was once a
part of the configuration, and keeps the number encoding to preserve execution order in case you want to turn it on again.

Note that by renaming the links, you can change the order of execution.

### $KRSTUFF\_HOME/etc.d

This is the place where those links point in the previous section. These files don't have an S in front, but they have a
number as a suggestion about what order they might be read in.

These files are stored in github, so they should only be modified if you intend to modify all the other computers using this
project.

