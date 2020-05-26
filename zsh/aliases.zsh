#### apache ####
alias apr='sudo apachectl restart'
alias apk='sudo apachectl -k stop'
alias apv="code /etc/apache2/extra/httpd-vhosts.conf /etc/hosts /etc/apache2/httpd.conf -n"

#### nginx ####
alias ngr='sudo nginx -s reload'
alias ngv="code /usr/local/etc/nginx/nginx.conf /etc/hosts -n"

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

#### git ####

# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

alias gp='git push'
alias gl='git pull'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb'

#### python ####
alias pys='python -m SimpleHTTPServer 8888'

#### sql #### 

function sqld {
    # usage: sqld project
    # todo: based on the filename, just grab the DB automatically
    mysqldump -u root -h 127.0.0.1 $1 --add-drop-table | gzip > $1-$(date +%Y-%m-%d-%H%M).sql.gz
}

function sqli {
    # to load a specific file (todo)
    # or to grab the most recent .gz file
    # usage: sqli project
    sql=`ls -Art _data/*.(gz|zip|sql)* | tail -n 1`
    echo $sql
    ext=${sql##*.}
    if [ $ext = "zip" ]; then
      unzip -p $sql | mysql -u root -h 127.0.0.1 $1
    elif [ $ext = "gz" ]; then
      gunzip < $sql | mysql -u root -h 127.0.0.1 $1
    else
      mysql -u root -h 127.0.0.1 $1 < $sql
    fi

    ## run local mods if present
    file="_data/local.sql"
    if [ -f "$file" ]
    then
      mysql -u root -h 127.0.0.1 $1 < $file
      echo "$file imported."
    else
      echo "$file not found."
    fi
    
    echo 'import complete'

    # todo: based on the filename, just grab the DB automatically
}

# zsh
alias zr='. ~/.zshrc' #refresh shell
