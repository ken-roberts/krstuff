# Ken Roberts 2010-11-02
# Modified 2021-08-04

export KRSTUFF_HOME='/usr/local/krstuff'
export KRSTUFF_CONFIG_HOME="${HOME}/.krstuff"

function krstuff_log {
	# Entering or Leaving
	[[ -n "${KRSTUFF_LOG}" ]] && echo "$1 ${BASH_SOURCE[0]}"
}

function make_and_change_dir {
	/bin/mkdir -p "$1"
	cd "$1"
}

function safe_source {
	if [ -n "${KRSTUFF_LOG}" ];then
		[[ -s "$1" ]] && echo "Sourcing $1" && source "$1"
	else
		[[ -s "$1" ]] && source "$1"
	fi
}

krstuff_log "Entering"

safe_source "${KRSTUFF_HOME}/platform_profile.d/`uname -s`.sh"

KCONFIG_PROFILE_D="${KRSTUFF_CONFIG_HOME}/bash_profile.d"
if [ ! -d "$KCONFIG_PROFILE_D" ]; then
	echo "${KCONFIG_PROFILE_D} does not exist!  Exiting."
	exit 9999
fi

OLDWD=$PWD
cd "${KCONFIG_PROFILE_D}"
for F in S*.sh; do
	safe_source "${KCONFIG_PROFILE_D}/${F}"
done;
cd $OLDWD

krstuff_log "Leaving"
