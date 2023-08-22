CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi
INCLUDE = ./include/tiny_obj_loader.h

renderer: ./src/main.cpp
	g++ $(CFLAGS) -o renderer ./src/main.cpp $(INCLUDE) $(LDFLAGS)

run: renderer
	./renderer

clean:
	rm -f VulkanTest
