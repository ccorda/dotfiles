function check_compression {
  # curl -I -H 'Accept-Encoding: gzip,deflate' $1 |grep "Content-Encoding"
  printf "request headers...\n"
  curl -I -H 'Accept-Encoding: gzip,deflate' $1
  printf "size in bytes without gzip...\n"
  curl -so /dev/null $1 -w '%{size_download}'
  printf "\nsize in bytes with gzip...\n"
  curl --compressed -so /dev/null $1 -w '%{size_download}'
  printf "\n"
}

function httpstatus {
  res=`curl -s -I $1 | grep HTTP/1.1 | awk {'print $2'}`
  printf "$res\n"
}