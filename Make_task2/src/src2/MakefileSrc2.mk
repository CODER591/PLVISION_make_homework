
all:

src2.o:
	$(CC) $(CC_FLAGS) src2.cpp -c

#For include makefiles
incl_src2:
	$(CC) $(CC_FLAGS) src2/src2.cpp -c

clean:
	rm -rf *.o