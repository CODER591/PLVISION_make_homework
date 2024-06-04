
all: main.o

INC_FLAGS=-I../src1/ -I../src2/ -I../src3/

main.o:
	$(CC) $(CC_FLAGS) $(INC_FLAGS) main.cpp -c

clean:
	rm -rf *.o