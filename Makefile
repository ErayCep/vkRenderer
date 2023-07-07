CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp
	g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)

.PHONT: test clean

testing: test.cpp
	g++ $(CFLAGS) -o test test.cpp $(LDFLAGS)

test: VulkanTest
	./VulkanTest

run_test: test
	./test

clean:
	rm -f VulkanTest

clean_test:
	rm -f test
