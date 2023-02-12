cxx = g++
target = main
src = $(wildcard *.cpp)
obj = $(patsubst %.cpp, %.o, $(src))

cxxflags = -c -Wall

$(target): $(obj)
	$(cxx) $^ -o $@

%.o: %.cpp
	$(cxx) $(cxxflags) $< -o $@

.PHONY:clean
clean:
	rm -f *.o $(target)