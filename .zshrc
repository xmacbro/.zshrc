# ---------------------------------------
# 2025 Dropbox zshrc Config
# Authors: Zach Johnson & Brent MacLaren
# ---------------------------------------

if command -v pyenv 1>/dev/null 2>&1; then
        eval "$(pyenv init --path)"
fi

# Path Variable
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:/root/.local/bin"
export PATH="$PATH:/opt"
export TERM='xterm-256color'
export WORKON_HOME=$HOME/.py-envs
export ZSH="/root/.oh-my-zsh"
#export PATH="$PATH:/usr/local/go/bin"

# Oh My ZSH Theme
ZSH_THEME="bira"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ls='grc --colour=auto ls --color=always'
alias lk="ls -lah *"
alias ll="ls -lh $@"
alias l="ls -lah $@"
alias impacket-ntlmrelayx="echo use ntlmrelayx.py"

alias sortip="sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4"
alias empire="cd /opt/Empire && ./empire $@"
alias ipconfig="ifconfig $@"
alias ipgrep="grep -oE '(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)'"
alias show_all_colors='for code in {000..255};do print -P -- "$code: %F{$code}This is how your text would look like%f";done'

alias msfc="systemctl start postgresql;msfdb start;msfconsole $@"
alias os-update="apt update && apt upgrade -y && apt autoremove -y && apt autoclean -y"
alias nxc="unbuffer nxc $@"

[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh
[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && mkdir -p $WORKON_HOME && source /usr/local/bin/virtualenvwrapper.sh

# Plugins
source /etc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Syntax highlighting customization. Looks like default Kali. Can be customized.
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=underline
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[global-alias]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[path]=bold
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[command-substitution]=none
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[process-substitution]=none
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=green
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=green
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=magenta
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[assign]=none
ZSH_HIGHLIGHT_STYLES[redirection]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[comment]=fg=black,bold
ZSH_HIGHLIGHT_STYLES[named-fd]=none
ZSH_HIGHLIGHT_STYLES[numeric-fd]=none
ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan
ZSH_HIGHLIGHT_STYLES[bracket-error]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-5]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=standout
