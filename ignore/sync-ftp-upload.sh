#!/bin/bash
HOST='185.4.133.211'
USER='satsilemtest'
PASS='t#K5rt76'
SOURCEFOLDER='/home/nick/WorkOnProgress/Repos/Untitled-test'
TARGETFOLDER='/'

lftp -f "
set ftp:ssl-allow no
open $HOST
user $USER $PASS
lcd $SOURCEFOLDER
mirror --reverse --delete --verbose --exclude .git/ --exclude .gitignore --exclude README.md --exclude ignore/ --exclude-glob *.sh --exclude-glob *.bak --exclude-glob *~$ $SOURCEFOLDER $TARGETFOLDER
bye
"