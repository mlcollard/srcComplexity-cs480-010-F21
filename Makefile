# Build for srcComplexity

srccomplexity : srcComplexity.o srcMLXPathCount.o
	g++ -std=c++17 $^ -lxml2 -o $@

srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
	g++ -std=c++17 -c $<

srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
	g++ -std=c++17 -I/usr/include/libxml2 -c $<

.PHONY: clean
clean:
	@rm -f srccomplexity srcComplexity.o srcMLXPathCount.o
