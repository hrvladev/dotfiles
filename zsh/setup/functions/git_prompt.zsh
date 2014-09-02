# ===================================================
# Credits to https://gist.github.com/joshdick/4415470
# ===================================================

# Modify the colors and symbols in these variables as desired
GIT_PROMPT_PREFIX="${BOLD_CYAN}(${RESET}"
GIT_PROMPT_SUFFIX="${BOLD_CYAN})${RESET}"
GIT_PROMPT_OK="${BOLD_GREEN}✔${RESET}"
GIT_PROMPT_STAGED="${BOLD_GREEN}✘${RESET}"
GIT_PROMPT_MODIFIED="${BOLD_RED}✘${RESET}"
GIT_PROMPT_UNTRACKED="${BOLD_YELLOW}✘${RESET}"
GIT_PROMPT_AHEAD="${BOLD_GREEN}↑NUM${RESET}"
GIT_PROMPT_BEHIND="${BOLD_RED}↓NUM${RESET}"
GIT_PROMPT_MERGING="${BOLD_RED}⚡${RESET}"

# Show Git branch/tag, or name-rev if on detached head
parse_git_branch() {
  (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}

# Show different symbols as appropriate for various Git repository states
parse_git_state() {
  local GIT_STATE=""
  local AHEAD_BEHIND=""
  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"

  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MERGING
  fi

  if ! git diff --staged --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_STAGED
  fi

  if ! git diff --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIED
  fi

  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_UNTRACKED
  fi

  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_AHEAD//NUM/$NUM_AHEAD}
  fi

  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_BEHIND//NUM/$NUM_BEHIND}
  fi

  if [[ -n $GIT_STATE ]];
  then
    echo $GIT_STATE
  else
    echo $GIT_PROMPT_OK
  fi
}

# If inside a Git repository, print its branch and state
git_prompt_string() {
  local git_where="$(parse_git_branch)"
  [ -n "$git_where" ] && echo "$GIT_PROMPT_PREFIX${BOLD_WHITE}${git_where#(refs/heads/|tags/)}${RESET}:$(parse_git_state)$GIT_PROMPT_SUFFIX"
}
