
all:

src1.o:
	$(CC) $(CC_FLAGS) src1.cpp -c

#For include makefiles
incl_src1:
	$(CC) $(CC_FLAGS) src1/src1.cpp -c

clean:
	rm -rf *.o