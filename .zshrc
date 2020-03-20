# Exports
export ZSH="/home/your_user/.oh-my-zsh"

export LANG=en_US.UTF-8
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

# Theme
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
  php           # PHP section
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
  #rust          # Rust section
  #haskell       # Haskell Stack section
  #julia         # Julia section
  #aws           # Amazon Web Services section
  #dotnet        # .NET section
  #ember         # Ember.js section
  #terraform     # Terraform workspace section
  #battery       # Battery level and status
)

# Plugins
plugins=(
  ansible
  aterminal
  # autojump
  chucknorris
  colorize
  colored-man-pages
  command-not-found
  common-aliases
  #composer
  extract
  docker-compose
  docker
  dotenv
  encode64
  extract
  git
  gitignore
  golang
  gulp
  heroku
  history
  httpie
  jsontools
  last-working-dir
  #node
  #npm
  #npx
  nvm
  perms
  #per-directory-history
  rsync
  ssh-agent
  systemd
  thefuck
  transfer
  tig
  urltools
  vi-mode
  vscode
  vundle
  web-search
  #yarn
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  history-substring-search
  zsh_reload
)

autoload -U compinit && compinit

# Hosts
alias hosts="sudo vim /etc/hosts"

# HiCat
alias hi="hicat"

# Chrome
alias chrome="open -a 'Google Chrome'"

# SSH
export SSH="~/.ssh/rsa_id"
alias __getssh="cat ~/.ssh/id_rsa.pub"

# Weather
alias __weather="curl wttr.in/~Samara"

# Star Wars
alias __starwars="telnet towel.blinkenlights.nl"

# Clone nikolasmelui github projects (boilerplates)
alias __gcnb="git clone https://github.com/NikolasMelui/nodejs-boilerplate.git"
alias __gcsrb="git clone https://github.com/NikolasMelui/strapi-react-boilerplate.git"

# Corol ls
alias lsc='colorls --dark --sort-dirs --report'
alias lc='colorls --tree --dark'

# Fuck
eval $(thefuck --alias)

# ZSH
source $ZSH/oh-my-zsh.sh

# NVM
export NVM_DIR="/home/your_user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

