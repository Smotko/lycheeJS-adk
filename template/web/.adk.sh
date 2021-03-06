#!/bin/bash
#
# lycheeJS-ADK
# (App Development Kit)
#
# Copyright (c) 2012 by Christoph Martens
#
# This Open-Source version is released under
# the terms of GNU General Public License
# version 3
#
# Please see the LICENSE.txt included with this
# distribution for further details.
#



usage() {

cat <<EOF

Template Integration Script for the lycheeJS ADK (App Development Kit) v0.5

Usage: $0 <task>


Each Template Integration Script has to offer the following tasks:

    setup             Setup everything and import required libraries
    build             Starts the build process
    package           Starts the packaging process
    clean             Cleans the folder up


Usage:

$0 prepare
$0 build
$0 package
$0 cleanup

EOF

}



case "$1" in
	help)

		usage;

		exit;
		;;

	setup)

		echo -e "\nSetting Up...";

			cat $game_path/index.html | sed -e 's/\.\.\/\.\.\/lychee/\.\/js\/lychee/g' | sed -e 's/\.\/source/\.\/js\/game/g' > ./index.html;

		exit;
		;;

	build)
		exit;
		;;

	package)
		exit;
		;;

	clean)

			rm -rf ./lib;

		exit;
		;;

esac;

