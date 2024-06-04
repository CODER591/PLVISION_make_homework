
CC=g++
CC_FLAGS= -std=c++17
LINK_LIBS= -lpthread
OUT_DIR = BUILD
EXEC_NAME=program.out
LINK_FOLDERS= src1/*.o src2/*.o src3/*.o main/*.o

# For sorting binaries sake, I will separate compile stage and linking stage
.PHONY: all build link src1 src2 src3 main

all: build link

build: src1 src2 src3 main
	@echo "${OUT_DIR}"
	mkdir -p $(OUT_DIR)

link:
	$(CC) $(CC_FLAGS) $(LINK_LIBS) $(LINK_FOLDERS) -o $(OUT_DIR)/$(EXEC_NAME)

src1:
	$(MAKE) -C src1 -f MakefileSrc1.mk

src2:
	$(MAKE) -C src2 -f MakefileSrc2.mk

src3:
	$(MAKE) -C src3 -f MakefileSrc3.mk

main:
	$(MAKE) -C main -f MakefileForMain.mk

clean:
	$(MAKE) -C src1 -f MakefileSrc1.mk clean
	$(MAKE) -C src2 -f MakefileSrc2.mk clean
	$(MAKE) -C src3 -f MakefileSrc3.mk clean
	$(MAKE) -C main -f MakefileForMain.mk clean
	rm -rf $(OUT_DIR)