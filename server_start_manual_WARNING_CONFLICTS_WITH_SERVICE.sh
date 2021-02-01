#!/bin/sh
set -eu;
cd ~/.minetest;
target="$(date --utc +before_%Y%m%d_%H%M%S_UTC.txt.gz)";
if test -e debug.txt; then {
	gzip -c < debug.txt > "log_archives/${target}";
}; fi;
true > debug.txt;
cd;
exec minetestserver --gameid minetest --worldname world --terminal;
