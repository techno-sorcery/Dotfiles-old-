#!/bin/sh
xrdb -merge ~/.Xresources

div(){
	echo -n " | "
}

#getVol(){
#	awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master)>
#}

getCpu(){
	echo -n " CPU: ";top -b|sed '3q;d'|cut -c 9-|cut -c -3|sed "s/^ *//"|tr -d '\n';echo -n "%, ";lscpu|grep MHz|sed "1q;d"|cut -c 9-|sed "s/^ *//"|cut -d'.' -f1|tr -d "\n";echo -n " MHz"
}

getMem(){
	echo -n "RAM: ";free --mega|sed '2q;d'|cut -c 25-|sed "s/^ *//"|rev|cut -c 47-|sed "s/^ *//"|rev|tr -d '\n';echo -n " MB"
}

getTemp(){
	cat /sys/class/thermal/thermal_zone1/temp|rev|cut -c4-|rev|tr -d '\n';echo -n "°C, ";cat /sys/class/hwmon/hwmon3/fan1_input|tr -d '\n';echo -n " RPM"
}

getBatt(){
	cat /sys/class/power_supply/BAT0/capacity|tr -d '\n';echo -n "%"
}

getDate(){
	date '+%a, %m/%d/%Y, %r '
}

while true; do
	xsetroot -name "$(getCpu;div;getMem;div;getTemp;div;getBatt;div;getDate)"
	sleep 1

done &
feh --bg-scale ~/Photos/Wallpapers/SPACE2.png
xinput --set-prop 11 "libinput Accel Speed" -0.2
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
bash -c "autorandr -c"
exec dwm
