#!/bin/bash
# ----------
# ZEN SCRIPT
# ----------
#
# simple script for a pomodoro technique. when the quicklook window appears take
# a breath, take a walk, do some stretches, or just don't look at a screen for
# a minute or two. then merrily return to work
# a little more centered than before.  :)
#
# using cron, this script runs at the hour and the half-hour during the business
# day ( M-F from 08:00-17:00 ). use the following crontab:
# 0,30    8-17    *   *   Mon,Tue,Wed,Thu,Fri ~/dotfiles/enso.sh

# open a quicklook preview of this file
qlmanage -p '~/Pictures/enso.jpg' &>/dev/null &

# wait for 60 seconds to be noticed
sleep 60

# check for the process and kill it
if ps aux | grep "[q]lmanage" > /dev/null
then
    pkill qlmanage
fi
