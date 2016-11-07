DIR_ROMFS=./root/
DIRS=etc lib usr dev

romfs:
	rm -rf $(DIR_ROMFS)
	[ -d $(DIR_ROMFS)/$$i ] ||  mkdir -p $(DIR_ROMFS)
#	mkdir -p $(DIR_ROMFS)
	for i in $(DIRS); do \
		[ -d $(DIR_ROMFS)/$$i ] || mkdir -p $(DIR_ROMFS)/$$i; \
	done
	



	#mkdir $(DIR_ROMFS)/dev/misc
	#mkdir $(DIR_ROMFS)/dev/pts
	#chmod 777 $(DIR_ROMFS)/tmp
	#$(ROMFSINST) etc /etc

