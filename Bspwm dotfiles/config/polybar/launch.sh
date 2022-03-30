#! /bin/bash

# kill all polybar processes
pkill polybar

# wait until all proccesses have shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch bar
polybar bottomright &
polybar left &
polybar right &
polybar middle &

