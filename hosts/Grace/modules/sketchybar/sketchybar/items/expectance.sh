#!/usr/bin/env bash


COLOR_CHARGE="$GREEN"
COLOR_BAT="$ORANGE"

sketchybar --add item expectance left \
	--set expectance \
	--set expectance update_freq=1 \
	icon.color="$COLOR_CHARGE" \
	icon.padding_left=10 \
	label.padding_right=10 \
	label.color="$COLOR_CHARGE" \
	background.height=26 \
	background.corner_radius="$CORNER_RADIUS" \
	background.padding_right=5 \
	background.border_width="$BORDER_WIDTH" \
	background.border_color="$COLOR_CHARGE" \
	background.color="$ITEM_COLOR" \
	background.drawing=on \
	script="$PLUGIN_DIR/expectance.sh" \
	--subscribe expectance power_source_change

