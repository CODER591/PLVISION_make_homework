
.PHONY: all task1 task2 clean

all: task1 task2

task1:
	$(MAKE) -C Make_task1 -f MakefileSimple.mk
	$(MAKE) -C Make_task1 -f MakefileFewTargets.mk
	$(MAKE) -C Make_task1 -f MakefileAutoVars.mk

task2:
	$(MAKE) -C Make_task2

clean:
	$(MAKE) -C Make_task1 -f MakefileSimple.mk clean
	$(MAKE) -C Make_task1 -f MakefileFewTargets.mk clean
	$(MAKE) -C Make_task1 -f MakefileAutoVars.mk clean
	$(MAKE) -C Make_task2 clean