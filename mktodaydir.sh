#!/bin/bash

#
# ~/today folder that point to today's date.
# 

today=`date +%F`
if [ ! -d "$today" ]; then
  mkdir ~/$today
  if [ -f ~/today ]; then
    rm ~/today
  fi
  ln -s ~/$today today
  echo "Today folder linked: ~/$today"
fi
