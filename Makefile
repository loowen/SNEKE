NAME = Snek

SRC = main.cpp

OBJ = $(SRC:.cpp=.o)

CFLAG = -Wall -Werror -Wextra -lSDL2

INCLUDES = -I includes/

all: $(NAME)

$(NAME):
	@clang++ $(INCLUDES) -c $(SRC)
	@echo "OBJECTS CREATED"
	@clang++ $(CFLAG) $(INCLUDES) -o $(NAME) $(OBJ)
	@echo "PROJECT CREATED"

clean:
	@/bin/rm -f $(OBJ)
	@echo "OBJECTS CLEANED"

fclean: clean
	@/bin/rm -f $(NAME)
	@echo "ALL FILES CLEANED"

re: fclean all