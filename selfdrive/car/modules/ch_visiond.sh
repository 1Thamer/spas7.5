#!/usr/bin/bash
cd /data/openpilot/selfdrive/visiond
if [ "$1" = "wiggly" ]; then
  ln -sf ./visiond-wiggly ./visiond
  sleep 2
  reboot
else
  if [ "$1" = "normal" ]; then
    ln -sf ./visiond-normal ./visiond
    sleep 2
    reboot
  fi
fi



#tmux has-session -t comma
## if [ $? == 0 ]
#then
#  tmux kill-session -t comma
#  sleep 1 
#fi
#tmux has-session -t comma
#while [ $? == 0 ]
#do
#  sleep 1
#  tmux has-session -t comma
#done
#tmux new-session -d -s comma
#sleep 1
#tmux has-session -t comma
#while [ $? != 0 ]
#do
#  tmux new-session -d -s comma
#  sleep 2
#  tmux has-session -t comma
#done

#tmux send-keys -t comma '/data/data/com.termux/files/continue.sh' C-m
 

