# Set up a custom prompt
autoload -Uz vcs_info
precmd() { vcs_info }
precmd() { print -rP "%F{cyan}[%n@%m %t] %F{magenta}%~" }
export PROMPT="$ ";

# Set default editor
export EDITOR=emacs

# Append history entries
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

# Ignore case for tab-completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
