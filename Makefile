# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: egiubell <egiubell@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/28 16:38:26 by egiubell          #+#    #+#              #
#    Updated: 2023/07/31 15:54:24 by egiubell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = philosophers
CC = gcc
CFLAGS = -Wall -Wextra -Werror -g -I./include

SEPARATOR = "\033[1m ******************************* \033[0m"
SRC =	\
		philosophers.c \
		utils.c

OBJS = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	@$(CC) $(CFLAGS) $(OBJS) $(MLX_LIBS) -o $(NAME)
	@echo "\033[1m READY TO START! \033[0m"
	@echo $(SEPARATOR)

%.o: %.c
	@printf "\tCompiling $<...\n"
	@$(CC) $(CFLAGS) -c $< -o $@
	@printf "\tCompiled!\n"

clean:
	@echo $(SEPARATOR)
	@rm -rf $(OBJS)
	@echo "\033[1m OBJ deleted \033[0m"

fclean: clean
	@rm -rf $(NAME)
	@echo "\033[1m $(NAME) deleted \033[0m"
	@echo $(SEPARATOR)
re: fclean all

.PHONY: all, clean, fclean, re, bonus