#!/usr/bin/env bash

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')
EXPECTANCE=$(pmset -g batt | grep -Eo "\S+ remaining")

if [ "$PERCENTAGE" = "" ]; then
	exit 0
fi

case ${PERCENTAGE} in
9[0-9] | 100)
	ICON=""
	;;
[6-8][0-9])
	ICON=""
	;;
[3-5][0-9])
	ICON=""
	;;
[1-2][0-9])
	ICON=""
	;;
*) ICON="" ;;
esac

if [ "$CHARGING" != "" ]; then
	ICON=""
fi

#sketchybar --set "$NAME" icon="$ICON" label="${EXPECTANCE} "
#sketchybar --set "$NAME" icon="$ICON" label="$EXPECTANCE" drawing=on

if [ "$EXPECTANCE" != "" ]; then
	if [ "$CHARGING" != "" ]; then
		ICON=""
		sketchybar --set "$NAME" icon="$ICON" label="Charging" drawing=on #icon.color="$GREEN" label.color="$GREEN" background.border_color="$GREEN"
	else
		sketchybar --set "$NAME" icon="$ICON" label="$EXPECTANCE" drawing=on #icon.color="$ORANGE" label.color="$ORANGE" background.border_color="$ORANGE"
	fi
else
	if [ "$CHARGING" != "" ]; then
		ICON=""
		sketchybar --set "$NAME" icon="$ICON" label="Charging" drawing=on #icon.color="$GREEN" label.color="$GREEN" background.border_color="$GREEN"
	else
		sketchybar --set "$NAME" icon="$ICON" label="N/A" drawing=on #icon.color="$ORANGE" label.color="$ORANGE" background.border_color="$ORANGE"
	fi
fi