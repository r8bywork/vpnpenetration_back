#!/bin/bash

# chomp() {
#   printf "%s" "${1/"$'\n'"/}"
# }

# ohai() {
#   printf "${tty_blue}==>${tty_bold} %s${tty_reset}\n" "$(shell_join "$@")"
# }

# warn() {
#   printf "${tty_red}Warning${tty_reset}: %s\n" "$(chomp "$1")"
# }

# # Check if script is run non-interactively (e.g. CI)
# # If it is run non-interactively we should not prompt for passwords.
# # Always use single-quoted strings with `exp` expressions
# # shellcheck disable=SC2016
# if [[ -z "${NONINTERACTIVE-}" ]]
# then
#   if [[ -n "${CI-}" ]]
#   then
#     warn 'Running in non-interactive mode because `$CI` is set.'
#     NONINTERACTIVE=1
#   elif [[ ! -t 0 ]]
#   then
#     if [[ -z "${INTERACTIVE-}" ]]
#     then
#       warn 'Running in non-interactive mode because `stdin` is not a TTY.'
#       NONINTERACTIVE=1
#     else
#       warn 'Running in interactive mode despite `stdin` not being a TTY because `$INTERACTIVE` is set.'
#     fi
#   fi
# else
#   ohai 'Running in non-interactive mode because `$NONINTERACTIVE` is set.'
# fi

# # USER isn't always set so provide a fall back for the installer and subprocesses.
# if [[ -z "${USER-}" ]]
# then
#   USER="$(chomp "$(id -un)")"
#   export USER
# fi

# # First check OS.
# OS="$(uname)"
# if [[ "${OS}" == "Linux" ]]
# then
#   HOMEBREW_ON_LINUX=1
# elif [[ "${OS}" == "Darwin" ]]
# then
#   HOMEBREW_ON_MACOS=1
# else
#   abort "Homebrew is only supported on macOS and Linux."
# fi

# # Required installation paths. To install elsewhere (which is unsupported)
# # you can untar https://github.com/Homebrew/brew/tarball/master
# # anywhere you like.
# if [[ -n "${HOMEBREW_ON_MACOS-}" ]]
# then
#   UNAME_MACHINE="$(/usr/bin/uname -m)"

#   if [[ "${UNAME_MACHINE}" == "arm64" ]]
#   then
#     # On ARM macOS, this script installs to /opt/homebrew only
#     HOMEBREW_PREFIX="/opt/homebrew"
#     HOMEBREW_REPOSITORY="${HOMEBREW_PREFIX}"
#   else
#     # On Intel macOS, this script installs to /usr/local only
#     HOMEBREW_PREFIX="/usr/local"
#     HOMEBREW_REPOSITORY="${HOMEBREW_PREFIX}/Homebrew"
#   fi
#   HOMEBREW_CACHE="${HOME}/Library/Caches/Homebrew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";

#   STAT_PRINTF=("stat" "-f")
#   PERMISSION_FORMAT="%A"
#   CHOWN=("/usr/sbin/chown")
#   CHGRP=("/usr/bin/chgrp")
#   GROUP="admin"

cd /opt/homebrew/bin; 
./brew install nmap;

# # Required installation paths. To install elsewhere (which is unsupported)
# # you can untar https://github.com/Homebrew/brew/tarball/master
# # anywhere you like.
# if [[ -n "${HOMEBREW_ON_MACOS-}" ]]
# then
#   UNAME_MACHINE="$(/usr/bin/uname -m)"

#   if [[ "${UNAME_MACHINE}" == "arm64" ]]
#   then

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/b.sh)"
