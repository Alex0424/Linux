# GIT STATUS in CLI prompt (Linux)

Branch status like this

To apply this UI prompt info, then edit this file:

`vim ~/.bashrc`

```
############################################################################################################

# shows on what branch you're on
parse_git_branch() {
  git branch 2>/dev/null | grep '*' | sed 's/* //'
}

export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
############################################################################################################
# Function to display Git status indicators
parse_git_status() {
  local STATUS=""
  local GIT_DIR="$(git rev-parse --git-dir 2>/dev/null)"
  
  if [[ -n "$GIT_DIR" ]]; then
    # Check for staged changes
    if [[ -n $(git diff --cached --name-only) ]]; then
      STATUS+="●"  # Staged (green)
    fi

    # Check for unstaged changes
    if [[ -n $(git diff --name-only) ]]; then
      STATUS+="✚"  # Unstaged (yellow)
    fi

    # Check for untracked files
    if [[ -n $(git ls-files --others --exclude-standard) ]]; then
      STATUS+="✱"  # Untracked (red)
    fi
  fi
  
  echo "$STATUS"
}

# Add to PS1 with branch and status
export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[31m\]\$(parse_git_status)\[\033[00m\] $ "


#############################################################################################################
parse_git_ahead_behind() {
  local GIT_DIR="$(git rev-parse --git-dir 2>/dev/null)"
  
  if [[ -n "$GIT_DIR" ]]; then
    local UPSTREAM="@{u}"
    local LOCAL=$(git rev-parse @)
    local REMOTE=$(git rev-parse "$UPSTREAM" 2>/dev/null)
    local BASE=$(git merge-base @ "$UPSTREAM" 2>/dev/null)
    
    if [[ $LOCAL == $REMOTE ]]; then
      echo ""  # Up to date
    elif [[ $LOCAL == $BASE ]]; then
      echo "↓"  # Need to pull
    elif [[ $REMOTE == $BASE ]]; then
      echo "↑"  # Need to push
    else
      echo "↕"  # Diverged
    fi
  fi
}

# Add to PS1 with branch, status, and ahead/behind info
export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[31m\]\$(parse_git_status)\[\033[33m\]\$(parse_git_ahead_behind)\[\033[00m\] $ "

############################################################################################################
parse_git_commit_hash() {
  git log --pretty=format:'%h' -n 1 2>/dev/null
}

# Add commit hash to PS1
export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[31m\]\$(parse_git_status)\[\033[33m\]\$(parse_git_ahead_behind) \[\033[36m\]\$(parse_git_commit_hash)\[\033[00m\] $ "

############################################################################################################
parse_git_commits_since_tag() {
  git describe --tags --abbrev=0 2>/dev/null
}

parse_git_commits_count() {
  local TAG=$(parse_git_commits_since_tag)
  if [[ -n "$TAG" ]]; then
    git rev-list "${TAG}.." --count 2>/dev/null
  fi
}

# Add commits since last tag to PS1
export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[31m\]\$(parse_git_status)\[\033[33m\]\$(parse_git_ahead_behind) \[\033[36m\]\$(parse_git_commit_hash)\[\033[35m\]\$(parse_git_commits_count)\[\033[00m\] $ "

############################################################################################################
parse_git_commit_time() {
  local commit_time=$(git log -1 --pretty=format:%cr 2>/dev/null)
  echo "$commit_time"
}

# Add time since last commit to PS1
export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[31m\]\$(parse_git_status)\[\033[33m\]\$(parse_git_ahead_behind) \[\033[36m\]\$(parse_git_commit_hash)\[\033[34m\]\$(parse_git_commit_time)\[\033[00m\] $ "

############################################################################################################
parse_git_dirty() {
  if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
    echo "✗"  # Dirty
  else
    echo "✓"  # Clean
  fi
}

# Add to PS1 with dirty/clean indicator
export PS1="\u@\h \W \[\033[32m\]\$(parse_git_branch)\[\033[31m\]\$(parse_git_status)\[\033[33m\]\$(parse_git_ahead_behind) \[\033[36m\]\$(parse_git_commit_hash) \[\033[35m\]\$(parse_git_dirty)\[\033[00m\] $ "

############################################################################################################
```
