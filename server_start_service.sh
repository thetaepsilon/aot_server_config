#!/bin/sh
echo "# warning: may require use of machinectl shell. systemctl --user and sudo don't get along." >&2;
systemctl --user start minetest || exit $?;
echo "# started, use ~/attach_minetest.sh script to attach to tmux session";
