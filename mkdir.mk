DIR_ROMFS=./root/
DIRS=etc lib usr dev

romfs:
	rm -rf $(DIR_ROMFS)
#	[ -d $(DIR_ROMFS)/$$i ] || mkdir -p $(DIR_ROMFS)
	mkdir -p $(DIR_ROMFS)
	for i in $(DIRS); do \
		[ -d $(DIR_ROMFS)/$$i ] || mkdir -p $(DIR_ROMFS)/$$i; \
	done
	
	#mkdir $(DIR_ROMFS)/dev/misc
	#mkdir $(DIR_ROMFS)/dev/pts
	#chmod 777 $(DIR_ROMFS)/tmp
	#$(ROMFSINST) etc /etc


# Run as root, of course.
if [ "$UID" -ne "$ROOT_UID" ]
then
echo "Must be root to run this script."
exit $E_NOTROOT
fi
if [ -n "$1" ]
# Test whether command-line argument is present (non-empty).
then
lines=$1
else
lines=$LINES # Default, if not specified on command-line.
fi