
all:

src3.o:
	$(CC) $(CC_FLAGS) src3.cpp -c

#For include makefiles
incl_src3:
	$(CC) $(CC_FLAGS) src3/src3.cpp -c

clean:
	rm -rf *.o