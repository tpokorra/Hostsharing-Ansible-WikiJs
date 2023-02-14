#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/wikijs.pid

source $HOME/.profile
cd $HOME/wikijs
nohup node server >> $HOME/var/log/wikijs.log 2>&1 &
echo $! > $PID
