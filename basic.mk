#basic paragramme makefile


echo "$(wildcard *.mk)"

hello += main.o func.o func2.o

target:=hello

target:
	@echo "hello world!"
