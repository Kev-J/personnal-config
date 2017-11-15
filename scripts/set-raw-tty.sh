#!/bin/sh

usage() {
	echo "Set tty interface in raw mode"
	echo ""
	echo "USAGE"
	echo "set-raw-tty.sh [OPTION] [TTY_FILE]"
	echo ""
	echo "DESCRIPTION"
	echo "  -h      Display this help"
}

while getopts "h" option
do
	case $option in
		h)
			usage
			exit -2
			;;
	esac
done

# Remove arguments processed by getopts
shift $((OPTIND-1))

if ! [ "$#" -ne 2 ]; then
	usage
	exit -2
fi

stty -F $1 raw -echo -echoe -echok -icrnl
