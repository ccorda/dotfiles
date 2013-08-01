#### apache ####
alias apr='sudo apachectl restart'
alias apv="subl subl /etc/apache2/extra/httpd-vhosts.conf /etc/hosts"

##### cd ####
alias ..='cd ..'
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# get to project folder quicker
function p {
  project=$1
  cd ~/projects/${1}
}

# git

# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# git
alias gp='git push'
alias gl='git pull'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb'

#### grunt ####
alias g='grunt'
alias gr='grunt release'

#### python ####
alias pys='python -m SimpleHTTPServer 8888'

#### sql ####
alias sqlaf='node ~/projects/jts-sandbox/appfog-database-export/export.js'

function sqld {
    # usage: sqld project
    # todo: based on the filename, just grab the DB automatically
    mysqldump -u root -h 127.0.0.1 $1 --add-drop-table | gzip > $1-$(date +%Y-%m-%d-%H%M).sql.gz
}

function sqli {
    # to load a specific file (todo)
    # or to grab the most recent .gz file
    # usage: sqli project
    sql=`ls -Art *.gz | tail -n 1`
    echo $sql
    gunzip < $sql | mysql -u root -h 127.0.0.1 $1
    echo 'import complete'
    # todo: based on the filename, just grab the DB automatically
}

# zsh
alias zr='. ~/.zshrc' #refresh shell
