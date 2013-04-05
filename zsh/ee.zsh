# Expression Engine CLI Tools

# $1 = project
# $2 = db name (optional, otherwise will default to project value)
function eedump {
  if [ -z "$2" ]
  then
    mysqldump -u root -h localhost $2 --add-drop-table | gzip > $1-$(date +%Y-%m-%d-%H%M).sql.gz
  else
    mysqldump -u root -h localhost $1 --add-drop-table | gzip > $1-$(date +%Y-%m-%d-%H%M).sql.gz
  fi
}