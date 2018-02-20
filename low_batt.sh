BATPATH=/sys/class/power_supply/BAT0
BAT_FULL=$BATPATH/energy_full
BAT_NOW=$BATPATH/energy_now
bf=$(cat $BAT_FULL)
bn=$(cat $BAT_NOW)
if [ $(( 100 * $bn / $bf )) -lt 25 ]
then
    /usr/bin/notify-send "CHARGE ME"
    /usr/bin/i3-nagbar "CHARGE MEEEE"
fi
