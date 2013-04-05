function check_compression {
  # curl -I -H 'Accept-Encoding: gzip,deflate' $1 |grep "Content-Encoding"
  curl -I -H 'Accept-Encoding: gzip,deflate' $1
}

function httpstatus {
  res=`curl -s -I $1 | grep HTTP/1.1 | awk {'print $2'}`
  echo "$res"
}