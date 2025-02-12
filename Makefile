CXX = g++
CXXFLAGS = -Wall -std=c++11 -I$(HOME)/SDL/include -I/usr/local/include
LDFLAGS = -L$(HOME)/SDL/lib -L/usr/local/lib -lSDL2 -lSDL2_image -lSDL2_ttf -lenet \
          -Wl,-rpath,$(HOME)/SDL/lib -Wl,-rpath,/usr/local/lib

all: main

main: main.cpp Game.hpp Game.cpp TextureManager.hpp TextureManager.cpp GameObject.hpp GameObject.cpp Map.hpp Map.cpp
	$(CXX) $(CXXFLAGS) main.cpp Game.hpp Game.cpp TextureManager.hpp TextureManager.cpp GameObject.hpp GameObject.cpp Map.hpp Map.cpp $(LDFLAGS) -o main

clean:
	rm -f main
