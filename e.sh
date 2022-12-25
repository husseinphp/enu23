#!/bin/sh

alias amass='docker run -it --rm -w /data -v $(pwd):/data caffix/amass'
amass
sleep 2
amass enum -passive -norecursive -noalts –d $1 -o $1sub.txt
sleep 2

telify -f $1sub.txt
