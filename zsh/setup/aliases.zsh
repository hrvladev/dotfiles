# List directory contents (ls)
alias ls='ls --color=always --group-directories-first'
alias l='ls --color=always --group-directories-first -lh'
alias la='l -a'

# Pacman
alias pacupg='sudo pacman -Syu' # Synchronize with repositories before upgrading packages that are out of date on the local system.
alias pacin='sudo pacman -S'    # Install specific package(s) from the repositories
alias pacins='sudo pacman -U'   # Install specific package not from the repositories but from a file
alias pacre='sudo pacman -R'    # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rns' # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'       # Display information about a given package in the repositories
alias pacreps='pacman -Ss'      # Search for package(s) in the repositories
alias pacloc='pacman -Qi'       # Display information about a given package in the local database
alias paclocs='pacman -Qs'      # Search for package(s) in the local database

# Ruby
alias be='bundle exec'

# Git
alias gb='git branch'
alias gco='git checkout'
alias gl='git pull'
alias ga='git add'
alias gst='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias glog='git log --oneline --decorate --color --graph'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(bold yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Emacs
alias ec='emacsclient -c'
alias et='emacsclient -t'