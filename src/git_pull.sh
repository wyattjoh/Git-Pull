#!/bin/bash
DIR=$1
LOG="/home/studentweb/.git_logs/cron.log"

[[ "$#" == 0 ]] && echo 'git_pull.sh $DIR' && exit

pull() {
  cd $DIR

  if [[ -e ".git/" ]]; then
    git checkout -f master
    git pull
  fi
}

pull | tee -a $LOG
