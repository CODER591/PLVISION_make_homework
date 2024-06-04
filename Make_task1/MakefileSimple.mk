
.PHONY: all

all:
	mkdir -p build && mkdir -p build/simple
	g++ -std=c++17 src/*.cpp -Isrc/ -lpthread -o simple.out
	mv simple.out build/simple

clean:
	rm -rf *.out && rm -rf *.o
