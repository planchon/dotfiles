# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="geoffgarside"

# oh-my-zsh plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  kube-aliases
)

source $ZSH/oh-my-zsh.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

alias st="cd /home/paul/stratumn"
alias sc="cd /home/paul/socomec"
alias dr="cd /home/paul/heka/docreview/"

# ALIASES
alias vim=nvim
alias v=nvim

# git
alias gap="git add -p"
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gpu="git pull"
alias gck="git checkout"

alias dcu="docker compose up -d"
alias dcd="docker compose down --volumes"
alias dl="docker logs"
alias dps="docker ps"

# CUSTOM
set +m

# zsh-autosuggest config
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

alias k=kubectl

alias prank=bash /home/paul/prank/paullock.sh
export PATH=$PATH:/usr/pgadmin4/bin
export KUBE_EDITOR=nvim
source <(kubectl completion zsh)

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

export GITLAB_TOKEN=KHbr_mFzseQajzC-u5A_
export GITLAB_USERNAME=paul.planchon

export PNPM_HOME="/home/paul/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

source "$HOME/.cargo/env"
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
alias tower=/home/paul/tower/src-tauri/target/release/brume-tower
alias bfg=java -jar ~/.local/bin/bfg-1.14.0.jar
alias cat='bat'

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt appendhistory
export TERMINAL=alacritty

# bun completions
[ -s "/home/paul/.oh-my-zsh/completions/_bun" ] && source "/home/paul/.oh-my-zsh/completions/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
