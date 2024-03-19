##
## EPITECH PROJECT, 2023
## Minishell
## File description:
## Main Makefile of the project
##

NAME = exec
ALIAS = executor

SRC	=	./main.c
SRC_TESTS	=	./tests.c

OBJ	=	$(SRC:.c=.o)
OBJ_TESTS	=	$(SRC_TESTS:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJ)
	gcc $(OBJ) -o $(NAME)
	gcc $(OBJ) -o $(ALIAS)

tests_run: CFLAGS += -g3 -lcriterion
tests_run: $(OBJ_TESTS)
	gcc $(OBJ_TESTS) -o unit_tests -lcriterion
	./unit_tests

clean:
	@ rm -f $(OBJ)

fclean:	clean
	@ rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re
