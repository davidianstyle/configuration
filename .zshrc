# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Dedupe PATH entries (collapses any double-adds from re-sourcing)
typeset -U path PATH

# Set default editor
export EDITOR=emacs

# Set GitHub PAT for Homebrew (replace with your actual token)
# export HOMEBREW_GITHUB_API_TOKEN=your_personal_access_token_here

# Set AWS profile
export AWS_PROFILE=default

# Zsh history settings
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Ignore case for tab-completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Set word boundaries to bash style
autoload -U select-word-style
select-word-style bash

# Aliases
alias ls='lsd'

# Enable fzf (if installed)
if command -v fzf > /dev/null 2>&1; then
  source "$(brew --prefix)/opt/fzf/shell/completion.zsh"
  source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
fi

# Install ngrok completions
if command -v ngrok > /dev/null 2>&1; then
  eval "$(ngrok completion)"
fi

# Add custom bin directories to PATH
export PATH="$PATH:$HOME/bin:$HOME/Code/bin"

# Add ~/.pub-cache/bin to PATH for Flutter development
export PATH="$PATH:$HOME/.pub-cache/bin"

# Set PATH for Android development
export ANDROID_NDK_HOME="$(brew --prefix)/share/android-ndk"
export ANDROID_HOME="$(brew --prefix)/share/android-commandlinetools"
# Set this ANDROID_HOME when using non-Homebrew installed version of Android Studio
# export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH="$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"

# Initialize asdf (single version manager for node, python, java, ruby, etc.)
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# Native Claude Code install — keep ~/.local/bin ahead of asdf shims so an
# asdf-shimmed (npm) claude can never intercept the node-independent native binary.
export PATH="$HOME/.local/bin:$PATH"
# append completions to fpath
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# For Colemak-DH keyboard layout left home row keys ``arst` == `asdf`
alias arst='asdf'

# Set JAVA_HOME (only if asdf is installed and a java version is set — otherwise
# `asdf where java` errors on every shell startup)
if command -v asdf >/dev/null 2>&1; then
  _java_home="$(asdf where java 2>/dev/null)"
  [[ -n "$_java_home" ]] && export JAVA_HOME="$_java_home"
  unset _java_home
fi

# Load Powerlevel10k theme
if [ -f "$(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" ]; then
  source "$(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme"
fi

# Load Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
