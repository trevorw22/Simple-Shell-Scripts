#!/bin/bash

# This script will run speed tests multiple times per day, and create a log of the results. Useful when trying to get SuddenLink to fix your internet.
# Works best if you add it to a cron.

PROG=/usr/bin/speedtest-cli

if test ! -f "$PROG"
then
	echo "Error $PROG not found, installing speedtest script."
	curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
fi

speedtest-cli | grep 'Mbit/s$' >> networkLog.txt
echo $'\n' >> networkLog.txt

exit 0
