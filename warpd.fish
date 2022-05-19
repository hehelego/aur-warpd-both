#!/usr/bin/env fish
pkill warpd
warpd-$XDG_SESSION_TYPE $argv &
disown $last_pid
