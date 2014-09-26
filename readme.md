Ken Roberts 2010-11-02

Installing:

1. You will need root access.
2. Check the code out in your home directory.
3. sudo mv krstuff /usr/local
4. cd /etc
5. sudo cp -r /usr/local/krstuff/skel/`uname -s` krstuff
6. Edit /etc/krstuff/profile so KRSTUFF_HOME reflects the location of the KRSTUFF directory in step 3.
7. Add the next snippet to your .bash_profile, near the top:

> # Pull in krstuff profile
> [[ -s "/etc/krstuff/profile" ]] && source "/etc/krstuff/profile"

This sets things up for all users who source the file the same way.

Special provision is made for root user.

The prompt changes color when you are root, or when you have changed from your original login name.

I'm trying to set this up in a way that is useful on any POSIX operating system, within reason.
