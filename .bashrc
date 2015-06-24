# Get the Git branch.
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
  . /usr/local/etc/bash_completion.d/git-prompt.sh
fi

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
PS1='\n\[\033[0;31m\]→\[\033[00m\] \[\033[0;36m\]\W\[\033[00m\]\[\033[0;33m\]$(__git_ps1 " (%s)")\[\033[00m\] \$ '

# Export environment paths.
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="~/.composer/vendor/bin:$PATH"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Alias settings.

## Utilities
alias c='clear'
alias ll='ls -al'

## Git commands
alias g='git'

## Shortcuts
root='~/Code'
alias goroot="cd ${root}"

## Generic tools
alias phpunit='./vendor/bin/phpunit'
alias phpspec='./vendor/bin/phpspec'

## Laravel
alias art='php artisan'

# Git auto tab completion
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

# NPM auto tab completion
if [ -f /usr/local/etc/bash_completion.d/npm ]; then
  . /usr/local/etc/bash_completion.d/npm
fi

# Refresh rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi
