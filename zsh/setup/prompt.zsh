source ~/Projects/dotfiles/zsh/setup/functions/git_prompt.zsh

function p_colored_path {
  local slash="${BOLD_CYAN}/${RESET}"
  echo "${${PWD/#$HOME/~}//\//$slash}"
}

username=${BOLD_CYAN}%n${RESET}
at=${BOLD_WHITE}at${RESET}
hostname=${BOLD_GREEN}%m${RESET}
in=${BOLD_WHITE}in${RESET}
cwd=${BOLD_YELLOW}%~${RESET}
pipe="${BOLD_WHITE}|${RESET}"
arrow="${BOLD_CYAN}►${RESET}" # ─► ➜
lambda="${BOLD_CYAN}λ${RESET}"
bang=${BOLD_RED}!${RESET}
git_status='$(git_prompt_string)'

# PROMPT=' $lambda $cwd $(git_prompt_string)
# $pipe$arrow '
# RPROMPT='$lambda'

PROMPT='$pipe$arrow '
RPROMPT='$(p_colored_path) $(git_prompt_string)'
