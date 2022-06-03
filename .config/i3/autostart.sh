#!/bin/sh

clipmenud &&
picom --experimental-backends &&
$HOME/.config/polybar/launch.sh &&
feh --no-fehbg --bg-fill --randomize $HOME/.wallpapers/*
