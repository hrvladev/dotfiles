# Enable colors in prompt
autoload -U colors && colors

# The variables are wrapped in %{%}. This should be the case for every
# variable that does not contain space.
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
  eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
  eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done

eval RESET='%{$reset_color%}'
