
CC=g++
CC_FLAGS= -std=c++17
LINK_LIBS= -lpthread
OUT_DIR = BUILD
EXEC_NAME=program.out
LINK_FOLDERS= src1/*.o src2/*.o src3/*.o main/*.o

# For sorting binaries sake, I will separate compile stage and linking stage
.PHONY: all build link src1 src2 src3 main recursive_file_build incl_make_build hint_way


WAY_OF_BUILD := $(shell echo ${HW_BUILD_FLAG})

#Only for the case with includes.
INCL_SUBTARGETS= incl_main incl_src1 incl_src2 incl_src3
INCL_MAKEFILES = src1/MakefileSrc1.mk src2/MakefileSrc2.mk src3/MakefileSrc3.mk main/MakefileForMain.mk

ifeq ($(WAY_OF_BUILD), YES)
    WAY_OF_BUILD = incl_make_build
else
    WAY_OF_BUILD = recursive_file_build
	INCL_SUBTARGETS =
#Overriding, in order to prevent target redefinition
	INCL_MAKEFILES =
endif

-include $(INCL_MAKEFILES)

all: build link

build: hint_way $(WAY_OF_BUILD)
	@echo "${OUT_DIR}"
	mkdir -p $(OUT_DIR)

hint_way:
	@echo "BUILDING ${WAY_OF_BUILD}"

incl_make_build: $(INCL_SUBTARGETS)
	$(eval LINK_FOLDERS=./*.o)

recursive_file_build: src1 src2 src3 main

link:
	$(CC) $(CC_FLAGS) $(LINK_LIBS) $(LINK_FOLDERS) -o $(OUT_DIR)/$(EXEC_NAME)

src1:
	$(MAKE) -C src1 -f MakefileSrc1.mk src1.o

src2:
	$(MAKE) -C src2 -f MakefileSrc2.mk src2.o

src3:
	$(MAKE) -C src3 -f MakefileSrc3.mk src3.o

main:
	$(MAKE) -C main -f MakefileForMain.mk main.o

clean:
	$(MAKE) -C src1 -f MakefileSrc1.mk clean
	$(MAKE) -C src2 -f MakefileSrc2.mk clean
	$(MAKE) -C src3 -f MakefileSrc3.mk clean
	$(MAKE) -C main -f MakefileForMain.mk clean
	rm -rf $(OUT_DIR)