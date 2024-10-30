# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: malves-b <malves-b@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/11 17:01:21 by malves-b          #+#    #+#              #
#    Updated: 2024/09/08 15:24:33 by malves-b         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILES = \
	ft_strlen.c ft_isalpha.c \
	ft_isalnum.c ft_bzero.c \
	ft_isascii.c ft_isdigit.c \
	ft_isprint.c ft_memcpy.c \
	ft_memmove.c ft_memset.c \
	ft_strlcpy.c ft_strlcat.c \
	ft_toupper.c ft_tolower.c \
	ft_strchr.c ft_strrchr.c \
	ft_strncmp.c ft_memchr.c \
	ft_memcmp.c ft_strnstr.c \
	ft_atoi.c ft_calloc.c \
	ft_strdup.c ft_substr.c \
	ft_strjoin.c ft_strtrim.c \
	ft_split.c ft_itoa.c \
	ft_strmapi.c ft_striteri.c \
	ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_putnbr_fd.c

BONUS_FILES = \
	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
	ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
	ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS = $(FILES:.c=.o)
BONUS_OBJS = $(BONUS_FILES:.c=.o)

CC	= cc
CFLAGS	= -Wall -Wextra -Werror
RM = rm -f

NAME	= libft.a

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

bonus: $(OBJS) $(BONUS_OBJS)
	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)

.PHONY: all, clean, fclean, re
