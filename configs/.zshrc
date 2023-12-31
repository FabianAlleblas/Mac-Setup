# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color" # This sets up colors properly

export LANG=en_US.UTF-8

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# OSX antigen file
arch_name="$(uname -m)";
if [ "${arch_name}" = "arm64" ]; then
  source /opt/homebrew/share/antigen/antigen.zsh;
else
  source /usr/local/share/antigen/antigen.zsh;
fi

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
antigen theme romkatv/powerlevel10k

# Bundles
antigen bundle git
antigen bundle common-aliases
antigen bundle fasd
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle zsh-users/zsh-autosuggestions

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell Antigen that you're done.
antigen apply

# Turn on extended globbing
setopt extendedglob

# Load custom aliases
[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /opt/homebrew/opt/git-extras/share/git-extras/git-extras-completion.zsh

# Switch branches by searching the existing branches or using key words for searching.
function gfco() {                                                               
  value=${1:-}                                                                  
  feature=$(git branch -r -l "*/feature/*" | sed "s/^[[:space:]]*\|[[:space:]]*$//g" | sed "s/^origin\///g" | gum filter --value=$value)
  [ $? -eq 0 ] && git checkout $feature                                         
}
