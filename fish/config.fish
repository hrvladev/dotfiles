set -x LANG en_GB.utf8
set -x EDITOR vim

# Git config
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_char_stateseparator ' '

# Configure chruby
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish
