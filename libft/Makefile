# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lbrusa <lbrusa@student.42berlin.de>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/16 13:32:11 by reldahli          #+#    #+#              #
#    Updated: 2024/05/14 17:49:18 by lbrusa           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Standard
NAME			= libft.a

# Directories
INC				= inc/
SRC_DIR			= src/
OBJ_DIR			= obj/

# Compiler Flags
# amended cc
CC				= cc

# -I doesnt really should be in the flags
CFLAGS			= -Wall -Wextra -Werror 
CFLAGS			+= -g

INCLUDES		= -I./inc/

RM				= rm -rf
AR				= ar rcs

# Source Files
FTIS_FILES		=	$(SRC_DIR)ft_is/ft_isalnum.c \
					$(SRC_DIR)ft_is/ft_isalpha.c \
					$(SRC_DIR)ft_is/ft_isascii.c \
					$(SRC_DIR)ft_is/ft_isdigit.c \
					$(SRC_DIR)ft_is/ft_isprint.c

FTMEM_FILES		=	$(SRC_DIR)ft_mem/ft_bzero.c \
					$(SRC_DIR)ft_mem/ft_calloc.c \
					$(SRC_DIR)ft_mem/ft_memchr.c \
					$(SRC_DIR)ft_mem/ft_memcmp.c \
					$(SRC_DIR)ft_mem/ft_memmove.c \
					$(SRC_DIR)ft_mem/ft_memset.c

FTPUT_FILES		=	$(SRC_DIR)ft_put/ft_putchar_fd.c \
					$(SRC_DIR)ft_put/ft_putendl_fd.c \
					$(SRC_DIR)ft_put/ft_putnbr_fd.c \
					$(SRC_DIR)ft_put/ft_putstr_fd.c

FTTO_FILES		=	$(SRC_DIR)ft_to/ft_atoi.c \
					$(SRC_DIR)ft_to/ft_itoa.c \
					$(SRC_DIR)ft_to/ft_tolower.c \
					$(SRC_DIR)ft_to/ft_toupper.c

FTSTR_FILES		=	$(SRC_DIR)ft_str/ft_split.c \
					$(SRC_DIR)ft_str/ft_strchr.c \
					$(SRC_DIR)ft_str/ft_strdup.c \
					$(SRC_DIR)ft_str/ft_striteri.c \
					$(SRC_DIR)ft_str/ft_strjoin.c \
					$(SRC_DIR)ft_str/ft_strlcat.c \
					$(SRC_DIR)ft_str/ft_strlcpy.c \
					$(SRC_DIR)ft_str/ft_strlen.c \
					$(SRC_DIR)ft_str/ft_strmapi.c \
					$(SRC_DIR)ft_str/ft_strncmp.c \
					$(SRC_DIR)ft_str/ft_strnstr.c \
					$(SRC_DIR)ft_str/ft_strrchr.c \
					$(SRC_DIR)ft_str/ft_strtrim.c \
					$(SRC_DIR)ft_str/ft_substr.c


FTPRINTF_FILES	=	$(SRC_DIR)ft_printf/ft_printf_utils.c \
					$(SRC_DIR)ft_printf/ft_printf.c


GNL_FILES		=	$(SRC_DIR)get_next_line/get_next_line.c

# Concatenate all source files
SRC 			= $(FTIS_FILES) $(FTMEM_FILES) $(FTPUT_FILES) \
				$(FTTO_FILES) $(FTSTR_FILES) $(FTPRINTF_FILES) $(GNL_FILES)

# Apply the pattern substitution to each source file in SRC and produce a corresponding list of object files in the OBJ_DIR
OBJ 			= $(patsubst $(SRC_DIR)%.c,$(OBJ_DIR)%.o,$(SRC))
# Build rules
all: 			$(NAME)

$(NAME): 		$(OBJ)
				$(AR) $(NAME) $(OBJ)

$(OBJ_DIR)%.o:	$(SRC_DIR)%.c
				mkdir -p $(@D)
				$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

# rm -f is forced -r is recursive for directories - -rf is already in RM
# what is cache_exists? I removed it because doesnt make sense?
clean:
				$(RM) $(OBJ_DIR)

fclean: 		clean
				$(RM) $(NAME)

re: 			fclean all

.PHONY: 		all clean fclean re
