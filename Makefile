CXX = g++
CXXFLAGS = -Wall -std=c++11 -I$(HOME)/SDL/include -I/usr/local/include -Isrc
LDFLAGS = -L$(HOME)/SDL/lib -L/usr/local/lib -lSDL2 -lSDL2_image -lSDL2_ttf \
          -Wl,-rpath,$(HOME)/SDL/lib -Wl,-rpath,/usr/local/lib

SRC_DIR = src
SRCS = $(wildcard $(SRC_DIR)/*.cpp)
HEADERS = $(wildcard $(SRC_DIR)/*.hpp)
OBJ_FILES = $(SRCS:.cpp=.o)

all: main

main: $(OBJ_FILES)
	$(CXX) $(CXXFLAGS) $(OBJ_FILES) $(LDFLAGS) -o main.exe

%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f main.exe $(SRC_DIR)/*.o
