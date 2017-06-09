NAME = nibbler

FLAGS = -Wall -Wextra -Werror

FRAMEWORK = -framework Cocoa -framework OpenGL -framework IOKit -framework CoreFoundation -framework CoreVideo

GLFW = -I ext/glfw3/include -L ext/src/ -lglfw3

all: $(NAME)

$(NAME):
	@brew install cmake
	@git clone https://github.com/glfw/glfw.git ext/glfw3
	echo "cd ext \ncmake glfw3 \nmake \
		 \ncurl "http://glad.dav1d.de/generated/tmprwM8JXglad/glad.zip" > glad.zip \nunzip glad.zip \ncd .." >> ext/make.sh
	sh ext/make.sh
	make compile

compile:
	clang++ main.cpp -o $(NAME) $(GLFW) $(FRAMEWORK)

clean: 
	@rm -rf ext/
	@rm $(NAME)