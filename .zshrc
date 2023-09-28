# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/lyzhofa/.oh-my-zsh"

export PATH=/opt/homebrew/bin:$PATH

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="$PATH:/$HOME/Documents/flutter/bin"

ZSH_THEME="powerlevel10k/powerlevel10k"


# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

plugins=(
  git
  node
  vscode
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# source /Users/lyzhofa/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Open GitHub directory
alias g="$HOME/GitHub/"

# Open current directory in VSCode
alias code='open -a Visual\ Studio\ Code.app'

alias cls='clear'

# Show/Hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias killds="find . -type f -name '*.DS_Store' -ls -delete"

# git shorthands
alias gall="git add ."
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gpush="git push -u origin"
alias glog="git log --oneline --graph --decorate --color"
alias gap="git add -p"

# alias for yarn
alias y="yarn"

# alias for pnpm
alias pn=pnpm

# npkill - delete node_modules
alias npkill="npx npkill"

# check outdated global dependencies
alias npmcheck="npx npm-check -gu"source /Users/lyzhofa/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zshsource /Users/lyzhofa/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/lyzhofa/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/Users/lyzhofa/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lyzhofa/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lyzhofa/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lyzhofa/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lyzhofa/Documents/google-cloud-sdk/completion.zsh.inc'; fi


# Load Angular CLI autocompletion.
source <(ng completion script)
