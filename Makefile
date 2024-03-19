##
## EPITECH PROJECT, 2023
## Minishell
## File description:
## Main Makefile of the project
##

NAME = exec

SRC	=	./main.c

OBJ	=	$(SRC:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJ)
	gcc $(OBJ) -o $(NAME)

clean:
	@ rm -f $(OBJ)

fclean:	clean
	@ rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re
