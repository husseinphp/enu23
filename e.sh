#!/bin/sh
alias amass='docker run -it --rm -w /data -v $(pwd):/data caffix/amass'
amass enum -passive -norecursive -noalts –d $1 -o $1sub.txt
telify -f $1sub.txt
