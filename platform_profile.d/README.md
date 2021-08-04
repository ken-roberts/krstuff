# platform-profile.d

This directory is for platform-specific settings to make your computer work better in a standard environment.

The files here are named `uname -s`.sh so that there can be multiple 
platforms here, but only the appropriate one will be executed.

Settings files should end in __.sh__ and should NOT be executable. They are 
sourced indirectly by .bash_profile. via $HOME/.krstuff/profile, before any 
other settings are read for the krstuff project. They should NOT have a 
__shebang__.
