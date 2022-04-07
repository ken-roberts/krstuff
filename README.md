Ken Roberts 2010-11-02
modified 2021-08-04 Ken Roberts

# Installing:

1. Checkout this project and move it to its final place.
2. In a terminal, change to the root directory.  For example, __/usr/local/krstuff__.
3. ./setup.sh
4. Append the following two lines to the very end of your ~/.bash\_profile.

```
# Pull in the krstuff configuration.
[[ -s '/usr/local/krstuff/bash_profile.sh' ]] && source '/usr/local/krstuff/bash_profile.sh'
```

# Configuration

1. In your $HOME directory, you create a .krstuff directory by executing an install script.
2. The install script sets everything up for your user, everything turned on.
3. You look in 2 directories and remove things you don't like.

## ~/.krstuff/etc.d

This is the heart of bash configuration scripts. What you see here is a symbolic link to every file in $KRSTUFF\_HOME/etc.d/.
The bash\_profile.sh file will pull each of these, in order, into your .bash\_profile configuration.

The beginning of the filenames are special.  If the filename matches S\*.sh then they are "enabled." They are executed in
alphabetical order, and anything not matching the S\*.sh pattern are ignored. 

To turn off a script, change the first character to something like K. This keeps the file there, so you know it was once a
part of the configuration, and keeps the number encoding to preserve execution order in case you want to turn it on again.

Note that by renaming the links, you can change the order of execution.

## ~/.krstuff/user\_profile.d

This is a place to put your personal (computer-specific) configurations. You can put them in bash\_profile.d but then you
risk accidentally deleting it, because most files in that directory are symbolic links. Rather than store files there, you
can store them here and symbolic link to them from bash\_profile.d.

## $KRSTUFF\_HOME/etc.d

This is the place where those links point in the previous section. These files don't have an S in front, but they have a
number as a suggestion about what order they might be read in.

These files are stored in github, so they should only be modified if you intend to modify all the other computers using this
project.

