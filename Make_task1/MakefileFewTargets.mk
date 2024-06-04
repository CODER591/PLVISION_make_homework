
CC=g++
CC_FLAGS= -std=c++17
INC_FLAGS= -Isrc/
LINK_LIBS= -lpthread

OUT_DIR=build/few_targs

EXEC_NAME=FewTargets.out

# For sorting binaries sake, I will separate compile stage and linking stage
.PHONY: all clean build environment link src1 main

all: environment build link

environment:
	mkdir -p build && mkdir -p $(OUT_DIR)

build: src1 main

src1:
	$(CC) $(CC_FLAGS) src/src1.cpp -c
	mv *.o $(OUT_DIR)/

main:
	$(CC) $(CC_FLAGS) $(INC_FLAGS) src/main.cpp -c
	mv *.o $(OUT_DIR)/

link:
	$(CC) $(CC_FLAGS) $(OUT_DIR)/*.o $(LINK_LIBS) -o $(EXEC_NAME)
	mv *.out $(OUT_DIR)

clean:
	rm -rf *.out && rm -rf *.o
	rm -rf $(OUT_DIR)