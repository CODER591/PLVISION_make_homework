
all: src2.o

src2.o:
	$(CC) $(CC_FLAGS) src2.cpp -c

clean:
	rm -rf *.o