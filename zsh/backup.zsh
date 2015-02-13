# Copy things like apache, etc/hosts, and other settings that don't live in dotfiles
# to a backup dir inside of ~/Dropbox/appdata/

# http://stackoverflow.com/questions/14059532/rsync-multiple-directories-with-quoted-paths

# To restore, run 

function backup_dropbox {
    backuppath='/Users/cameron/Dropbox/appdata/conf/'

    backupitems=(
        ~/.ssh
        ~/Library/fonts
        /etc/hosts
        /etc/apache2/extra/httpd-vhosts.conf
        /etc/apache2/httpd.conf
        /etc/sysctl.conf
        /usr/local/etc/php/5.4/php.ini
    )

    for source in $backupitems; do 
        rsync -a --exclude='.git' $source $backuppath
    done
}

function restore_dropbox {

    backuppath='/Users/cameron/Dropbox/appdata/conf/'
    
    source='fonts/'
    destination='~/Library/fonts'
    rsync -a $backuppath$source $destination

    source='.ssh/'
    destination='~/.ssh'
    rsync -a $backuppath$source $destination

    chmod 600 ~/.ssh/id_rsa

    # backuppath='/Users/cameron/Dropbox/appdata/conf/'

    # backupitems=(
    # ~/Library/fonts/
    # /etc/hosts
    # /etc/apache2/extra/httpd-vhosts.conf
    # /etc/apache2/httpd.conf
    # /etc/sysctl.conf
    # /usr/local/etc/php/5.4/php.ini
    # )

    # for source in $backupitems; do 
    #     rsync -a --exclude='.git' $source $backuppath
    # done
}