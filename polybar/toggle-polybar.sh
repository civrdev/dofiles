#!/bin/sh
pgrep -x polybar
status=$?
if test $status -eq 0
then
  killall polybar && bspc config -m focused top_padding 1
else
  polybar example &
fi
