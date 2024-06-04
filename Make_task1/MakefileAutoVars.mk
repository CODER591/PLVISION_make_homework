
CC=g++
CC_FLAGS= -std=c++17
INC_FLAGS= -Isrc/
LINK_LIBS= -lpthread

OUT_DIR=build/auto_vars

EXEC_NAME=AutoVars.out

.PHONY: all clean build environment link

# For sorting binaries sake, I will separate compile stage and linking stage
all: environment build link

environment:
	mkdir -p build && mkdir -p $(OUT_DIR)

build: src1.cpp main.cpp
	@ echo "\n"
	@ echo "[DONE] [$@] target is completed. $^ are built."
	@ echo "\n"

src1.cpp:
	$(CC) $(CC_FLAGS) src/$@ -c
	mv *.o $(OUT_DIR)/

main.cpp:
	$(CC) $(CC_FLAGS) $(INC_FLAGS) src/$@ -c
	mv *.o $(OUT_DIR)/

link:
	$(CC) $(CC_FLAGS) $(OUT_DIR)/*.o $(LINK_LIBS) -o $(EXEC_NAME)
	mv *.out $(OUT_DIR)

clean:
	rm -rf *.out && rm -rf *.o
	rm -rf $(OUT_DIR)

