
all: src1.o

src1.o:
	$(CC) $(CC_FLAGS) src1.cpp -c

clean:
	rm -rf *.o