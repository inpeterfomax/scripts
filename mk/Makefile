#// Makefile for test .


CC:=gcc

BIN:= ./bin/ 

CFLAGS:= -O2 -Wall
#file dirs
VPATH := ./src/:./heads/

INC := -I./heads/

heads := my_api_add.h my_api_mul.h my_api_sub.h 

files := main.c my_api_add.c my_api_sub.c my_api_mul.c
#objects := main.o my_api_add.o my_api_sub.o my_api_mul.o
objects := $(files:.c=.o) #nice tech.

TARGET := hello  
#$(objects):$(filter %.c,$(files)) $(heads)
hello:$(objects) 
	$(CC) $(CFLAGS) -o hello $(objects)

	@echo "compile done!"
	#@echo doen ...2
	#@mv hello ./bin/
	#@rm -rf *.o	
	
#Use this to define more targets.

.PHONY:all install clean print

all:hello 
	@echo "make all"
install:
	@echo "make install"
	mv $(TARGET)  $(BIN)
clean:
	@echo "make clean"
	rm -rf $(objects)
