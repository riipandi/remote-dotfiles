#---------------------------------------------------------------------------------------
# Aliases for Git
#---------------------------------------------------------------------------------------
alias gac='(){ git add --all . && git commit -am $@ ;}'
alias gas='(){ git push origin $(git symbolic-ref --short -q HEAD) ;}'
alias gap='(){ git add --all . && git commit -am $1 && git push origin $(git symbolic-ref --short -q HEAD) ;}'
alias gl='git log --pretty=format:"%C(magenta)%h %C(cyan)%C(bold)%ad%Creset %<(20)%C(cyan)%an%Creset %s %C(green)%Creset" --date=short'
alias gpr='git reset --hard && git pull --rebase origin $(git symbolic-ref --short -q HEAD)'
alias gco='git checkout'
alias gs='git status'
alias gc='git clone'
alias gp='git pull'
alias gf='git fetch'
alias gb='git branch -vv'
alias gr='git remote -v'
alias gd='git branch -D'

#---------------------------------------------------------------------------------------
# Aliasses for Docker
#---------------------------------------------------------------------------------------
alias dk='docker'
alias dc='docker-compose'
alias dkstop='docker stop'
alias dkruni='docker run --rm --interactive'
alias dklsi='docker image list'
alias dkps='docker ps --format "table{{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
alias dkprune='echo y | docker image prune -a && echo y | docker system prune --volumes'
alias dkcleanup='docker stop $(docker ps -aq) && docker rm $(docker ps -aq)'
alias dkstartall='docker start $(docker ps -aq) && dkps -a'
alias dkstopall='docker stop $(docker ps -aq) && dkps -a'
alias dkrmall='docker rm $(docker ps -aq) && dkps -a'

#---------------------------------------------------------------------------------------
# Other aliases
#---------------------------------------------------------------------------------------
alias doprun='(){ doppler run -- $@ ;}'
alias dop='doppler'
alias lg='lazygit'
alias supa='supabase'
alias tf='terraform'
alias x='exit'
