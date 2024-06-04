
all:

INC_FLAGS=-I../src1/ -I../src2/ -I../src3/

#For include makefiles
INCL_HEADERS=-Isrc1/ -Isrc2/ -Isrc3/

main.o:
	$(CC) $(CC_FLAGS) $(INC_FLAGS) main.cpp -c

#For include makefiles
incl_main:
		$(CC) $(CC_FLAGS) $(INCL_HEADERS) main/main.cpp -c

clean:
	rm -rf *.o