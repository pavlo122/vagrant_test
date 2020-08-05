while true ;do /usr/bin/nc -l -p 8000 -c '/usr/bin/echo -e "HTTP/1.1 200 OK\n\n$(/usr/bin/hostname)"'; done
