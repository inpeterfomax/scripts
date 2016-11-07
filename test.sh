#!/bin/sh

echo $1
Line[4]={1,2,3,4}
for index in 1 2 3 4 5 # Five lines.
do
	printf " %s\n" "${Line[index]}"
done

UID=89
ROOT_UID=99
# Run as root, of course.
if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
exit $E_NOTROOT
fi

if [ -n "$1" ]
 echo "Test whether command-line argument is present (non-empty)."
then
	lines=$1
else
	lines=$LINES # Default, if not specified on command-line.
fi
