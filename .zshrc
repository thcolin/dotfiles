export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/Users/thcolin/.scripts:$PATH"
export PATH="$PATH:node_modules/.bin"
export LANG=fr_FR.UTF-8
export EDITOR=nano
export CLICOLOR=1
export SHELL=/bin/zsh

function prompt_lean_left() {
  echo "%T "
}

PROMPT_LEAN_LEFT=prompt_lean_left

alias tunnel="ssh -D 1337 -C -N"
alias ll="ls -lha"
alias textedit="open -e"
alias giit="git"
alias lzd="lazydocker"
alias cat="bat"

source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle mafredri/zsh-async
antigen theme miekg/lean
antigen bundle unixorn/warhol.plugin.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

#antigen bundle zsh-users/zsh-syntax-highlighting
#antigen bundle sindresorhus/pure
#antigen-bundle arialdomartini/oh-my-git
#antigen theme arialdomartini/oh-my-git-themes oppa-lana-style

antigen apply

neofetch --config ~/.neofetch --ascii ~/.neofetch_ascii

# N
export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$PATH"

# Yarn
export PATH="$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"

# PHP
#[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
#phpbrew use 7.2.9
#source ~/.phpbrew/bashrc

export PATH="/usr/local/php5/bin:$PATH"
export PATH="$HOME/.symfony/bin:$PATH"

# Fastlane
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
