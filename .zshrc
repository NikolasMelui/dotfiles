export ZSH="/Users/nsladkii/.oh-my-zsh"

export LANG=en_US.UTF-8

ZSH_THEME="spaceship"

# Configs Spaceship
SPACESHIP_HOST_SHOW=true
SPACESHIP_HOST_SUFFIX=' ssh '
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_PREFIX=
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_TRUNC=0
SPACESHIP_GIT_PREFIX=
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_PROMPT_ORDER=(
  host          # Hostname section
  user          # Username section
  dir           # Current directory section
  line_sep      # Line break
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  #php           # PHP section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  venv          # virtualenv section
  golang        # Go section
  docker        # Docker section
  #kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
  #time          # Time stamps section
  #hg            # Mercurial section (hg_branch  + hg_status)
  #ruby          # Ruby section
  #elixir        # Elixir section
  #xcode         # Xcode section
  #swift         # Swift section
  rust          # Rust section
  #haskell       # Haskell Stack section
  #julia         # Julia section
  #aws           # Amazon Web Services section
  #dotnet        # .NET section
  #ember         # Ember.js section
  #terraform     # Terraform workspace section
  #battery       # Battery level and status
)

plugins=(
  ansible
  #ant
  #autojump
  #aws
  #bower
  brew
  #cake
  rust
  catimg
  #chucknorris
  colorize
  colored-man-pages
  command-not-found
  #composer
  docker
  #dotenv
  #dotnet
  encode64
  extract
  git
  gitignore
  golang
  #gulp
  #helm
  #heroku
  history
  #httpie
  jsontools
  #kubectl
  #laravel
  last-working-dir
  #microk8s
  #minikube
  #mvn
  #mix
  #ng
  #nomad
  nmap
  node
  npm
  nvm
  macos
  #per-directory-history
  perms
  #redis-cli
  ripgrep
  #rsync
  rust
  #ssh-agent
  systemd
  #terraform
  thefuck
  tig
  tmux
  #tmuxinator
  #torrent
  #ubuntu
  #ufw
  urltools
  #vagrant
  vi-mode
  vscode
  #web-search
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

autoload -U compinit && compinit

# Weather
alias __weather="curl wttr.in/~Moscow"

# StarWars
alias __starwars="telnet towel.blinkenlights.nl"

# Vi/Vim
alias vi="vim"
alias tree="tree -C"

# demo5
alias __demo_open="sh ~/dev/demo5_scripts/open_demo.sh"
alias __demo_clear="sh ~/dev/demo5_scripts/clear_demo.sh"
alias __demo_5="sh ~/dev/demo5_scripts/5_demo.sh"

# Fuck
eval $(thefuck --alias)

# Clone nikolasmelui github projects (boilerplates)
alias __gcnnb="git clone git@github.com:NikolasMelui/nikolasmelui-nodejs-boilerplate.git"

source $ZSH/oh-my-zsh.sh

# Tab completion for .ssh/config
complete -o default -o nospace -W "$(grep "^Host" $HOME/.ssh/config | cut -d " " -f2)" scp sftp ssh

# Nvm
alias __migratenvm="nvm reinstall-packages $1"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nsladkii/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nsladkii/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nsladkii/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nsladkii/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

