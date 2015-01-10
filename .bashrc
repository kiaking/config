# Get the Git branch.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
PS1="\n\[\033[0;31m\]→\[\033[00m\] \[\033[0;36m\]\W\[\033[00m\]\[\033[0;33m\]\$(parse_git_branch)\[\033[00m\] \$ "

# Export environment paths.
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="~/.composer/vendor/bin:$PATH"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Alias settings.

## Utilities
alias c="clear"
alias ll="ls -al"

## Git commands
alias g="git"

## Shortcuts
alias gotoroot="cd ~/Dropbox/projects"
alias gotoactress="cd ~/Dropbox/projects/Actress/actress"
alias gotocycle="cd ~/Dropbox/projects/Cycle/cycle-rebuild"
alias gotoconfig="cd ~/Dropbox/projects/Kia-King/config"
alias gotokiaking="cd ~/Dropbox/projects/Kia-King/kia-king"

# Git auto tab completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Refresh rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi
