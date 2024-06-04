
all: src3.o

src3.o:
	$(CC) $(CC_FLAGS) src3.cpp -c

clean:
	rm -rf *.o