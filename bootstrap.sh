#!/bin/sh
./regen/regen_ninja base.ninja instance_name.txt > ./.tmp.ninja || exit $?;
mv .tmp.ninja build.ninja || exit $?;
echo "# setup complete, run ninja now and thereafter to update configs";

