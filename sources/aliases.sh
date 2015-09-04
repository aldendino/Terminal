
# Sets alias of clr to clear
alias clr='clear'

# Alias or removing a directory
alias rmd='rm -r'

# Sets alias of ls to ls -colour
alias ls='ls -Gp'

# Set ls settings
alias ll='ls -l'
alias la='ls -a'
alias lh='ls -lh'

# Editing and Sourcing .bashrc shortcuts
alias vb='vim ~/.bashrc'
alias sb='source ~/.bash_profile'

# Set kill as die
alias die='kill'

# recursively remove unsafe permissions
alias strip='chmod -R o-rwx *'

# Open finder instance of the current directory
alias finder='open .'

# n level parent traversal
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# back
alias back='cd -'

# Vim settings editting
alias vv='vim ~/.vimrc'
alias va='vim ~/Sources/aliases.sh'

# Alias for doter
alias hide='doter'

# Get the ip address
alias ip='ipconfig getifaddr en0'

# Run graphical prolog with X
alias prolog='xtkeclipse'

# Run MacVim from terminal
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'

# User info
alias dev='echo "This device belongs to $USER."'

# man saving
alias manvim='man vim | col -b > ~/Desktop/vim.txt'

