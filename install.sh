# !/usr/local/env bash
# This is the installer script for krstuff.
# The package should already be installed at /usr/local/krstuff.

# Instructions to install:
#    1. Extract/checkout to your "permanent" location.
#    2. In a terminal window, change so that your active directory is the root directory of krstuff.
#    3. ./install.sh

KRSTUFF_HOME=`pwd`
KRSTUFF_ETC_D="${KRSTUFF_HOME}/etc.d"
KRSTUFF_TMUX_D="${KRSTUFF_HOME}/tmux.d"

KRSTUFF_CONFIG_HOME="${HOME}/.krstuff"
HOME_PROFILE_D="${KRSTUFF_CONFIG_HOME}/etc.d"
HOME_TMUX_D="${KRSTUFF_CONFIG_HOME}/tmux.d"
HOME_USER_PROFILE_D="${KRSTUFF_CONFIG_HOME}/user_profile.d"

OLDWD=`pwd`

echo "Installing with KRSTUFF_HOME=${KRSTUFF_HOME}."

if [ -d "${KRSTUFF_CONFIG_HOME}" ]; then
	echo "krstuff is already configured for this user!"
	echo "To start over, delete the ${KRSTUFF_CONFIG_HOME} directory."
	exit 0
fi

mkdir $KRSTUFF_CONFIG_HOME
mkdir "${HOME_PROFILE_D}"
cd $KRSTUFF_ETC_D
for F in *.sh; do
	ln -s "${KRSTUFF_ETC_D}/${F}" "${HOME_PROFILE_D}/S${F}"
done

mkdir $HOME_TMUX_D
cd $KRSTUFF_TMUX_D
for G in *; do
	ln -s "${KRSTUFF_TMUX_D}/${G}" "${HOME_TMUX_D}/"
done

mkdir "${HOME_USER_PROFILE_D}"

cd $OLDWD
