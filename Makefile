# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anloisea <anloisea@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/01 17:42:34 by anloisea          #+#    #+#              #
#    Updated: 2022/09/05 15:30:03 by anloisea         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	= libft.a

SRCS 	= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c \
		  ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
		  ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
		  ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
		  ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_printf.c ft_putchar_len.c ft_putstr_len.c ft_strlen.c \
		  ft_putnbr_len.c ft_putunbr_len.c ft_puthexa_len.c ft_putmem_len.c ft_lstnew_bonus.c ft_lstadd_front_bonus.c \
		  ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c \
		  ft_lstmap_bonus.c get_next_line.c get_next_line_utils.c

BOBJS = ${BONUS:.c=.o}

OBJS 	= ${SRCS:.c=.o}

HDR	= libft.h

CC	= gcc

CFLAGS	= -Wall -Wextra -Werror

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}

		ar rc ${NAME} ${OBJS} ${HDR}
		ranlib ${NAME}

all:		${NAME}

clean :
	rm -f ${OBJS}

fclean:		clean
	rm -f ${NAME}

re:	fclean all

.PHONY: re all clean fclean