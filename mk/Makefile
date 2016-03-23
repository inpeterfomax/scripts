#// Makefile for test .


CC:=gcc

FLAGS:= -O2 -Wall

VPATH = ./src/:./heads/

heads = my_api_add.h my_api_mul.h my_api_sub.h 
files = my_api_add.c my_api_sub.c my_api_mul.c

objects = main.o my_api_add.o my_api_sub.o my_api_mul.o

#$(objects):$(filter %.c,$(files)) $(heads)
hello:$(objects) 
	$(CC) $(FLAGS) -o hello $(objects)

	@echo "going to compile..."
	@echo doen ...2

	@mv hello ./bin/
	
	#@echo "clean ?"
	@rm -rf *.o	
	
.PHONY:clean
clean:
	@rm -rf $(objects)
