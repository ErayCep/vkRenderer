CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi
INCLUDE = ./include/tiny_obj_loader.h

VulkanTest: ./src/main.cpp
	g++ $(CFLAGS) -o VulkanTest ./src/main.cpp $(INCLUDE) $(LDFLAGS)

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest
