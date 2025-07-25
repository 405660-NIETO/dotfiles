#!/bin/bash

mkdir -p "$XDG_PICTURES_DIR/Screenshots"

filename="$XDG_PICTURES_DIR/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S_grim.png')"
grim -g "$(slurp)" "$filename"

wl-copy < "$filename"

notify-send "Captura guardada y copiada" "$filename"
