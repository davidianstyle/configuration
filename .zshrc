# Set up a custom prompt
NEWLINE=$'\n'
export PROMPT="%F{cyan}[%n@%m%t] %F{magenta}%~ %F{white}${NEWLINE}$ ";

# Set default editor
export EDITOR=emacs

# Append history entries
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

# Ignore case for tab-completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
