# Shortcuts
alias r="rm -r"
alias rr="rm -rf"
alias documents="cd ~/Documents"
alias download="cd ~/Downloads"
alias desktop="cd ~/Desktop"
alias sites="cd ~/code"
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# Directory listing/traversal
alias l="ls"
alias ll="ls -lA"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Git
alias gs="git status"
alias gl="git log"
alias gcom="git checkout master"
alias gc="git commit -m"
alias gcs="git commit -s -S"
alias nah="git checkout -- . && git reset --hard HEAD && git clean -df"
alias wip="git add . && git commit  -m 'Work In Progress' -m 'This is a trash commit to save changes'"
alias zshconf="nano ~/.zshrc"
alias omz="cd ~/.oh-my-zsh"
alias com="git commit -s -a -m 'Empty' --allow-empty"
alias repush="git pull --rebase && git push"
alias commit-gpg="export GPG_TTY=$(tty)"
alias count-commit="git rev-list --all --count"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'


# Full stack
alias fullstack="cd backend && code . && cd .. && cd frontend && code . "
alias weather="curl v2.wttr.in"

alias node-clean="rm -rf node_modules  package-lock.json  yarn.lock"
