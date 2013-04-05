#!/bin/zsh

# afdump client-mysql
function afdump2 {
  echo Asking AppFog to export $1
  res=$(af export-service $1)
  # todo extract url to variable, fail if not present
  #echo ${#res}
  url=${res##Exporting data from * OK}
  echo Downloading $url...
  curl ${url} -o > /tmp/dump-$1.gz
}

function afdump {
  # todo: need to extract id from url
  url=$2
  id=$3
  curl $url > ~/tmp/af/dump-$1.gz
  unzip -j -o ~/tmp/af/dump-$1.gz -d ~/tmp/af -x manifest
  cp ~/tmp/af/${id}.sql.gz ${1}-$(date +%Y-%m-%d-%H%M).sql.gz
}