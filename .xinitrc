#!/bin/env bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
dbus-launch --exit-with-session bspwm
