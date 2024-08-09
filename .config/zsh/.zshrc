#!/bin/zsh
#
# This file, .zshrc, is sourced by zsh for each interactive shell session.
#
# Note: For historical reasons, there are other dotfiles, besides .zshenv and
# .zshrc, that zsh reads, but there is really no need to use those.
#
# Load all of the files in rc.d that start with <number>- and end in `.zsh`.
# (n) sorts the results in numerical order.
#  <->  is an open-ended range. It matches any non-negative integer.
# <1->  matches any integer >= 1.
#  <-9> matches any integer <= 9.
# <1-9> matches any integer that's >= 1 and <= 9.
# See https://zsh.sourceforge.io/Doc/Release/Expansion.html#Glob-Operators
local file=
for file in $ZDOTDIR/rc.d/<->-*.zsh(n); do
. $file   # `.` is like `source`, but doesn't search your $path.
done

# vim mode
bindkey -v
