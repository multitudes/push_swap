# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: reldahli <reldahli@student.42berlin.d      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/16 13:32:11 by reldahli          #+#    #+#              #
#    Updated: 2024/04/16 13:32:13 by reldahli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# output library name
NAME		= libft.a
HEADER		= libft.h

# Directories
INC		= inc/
SRC_DIR		= src/
OBJ_DIR		= obj/

# compiler and flags
CC		= gcc
CFLAGS		= -Wall -Wextra -Werror -I

# source files

FTIS_DIR	= $(SRC_DIR)ft_is/ft_isalnum.c \
			$(SRC_DIR)ft_is/ft_isalpha.c \
			$(SRC_DIR)ft_is/ft_isascii.c \
			$(SRC_DIR)ft_is/ft_isdigit.c \
			$(SRC_DIR)ft_is/ft_isprint.c \
			
FTMEM_DIR	= $(SRC_DIR)ft_mem/ft_bzero.c \
			$(SRC_DIR)ft_mem/ft_calloc.c \
			$(SRC_DIR)ft_mem/ft_memchr.c \
			$(SRC_DIR)ft_mem/ft_memcmp.c \
			$(SRC_DIR)ft_mem/ft_memcpy.c \
			$(SRC_DIR)ft_mem/ft_memmove.c \
			$(SRC_DIR)ft_mem/ft_memset.c \
			
FTPUT_DIR	= $(SRC_DIR)ft_put/ft_putchar_fd.c \
			$(SRC_DIR)ft_put/ft_putendl_fd.c \
			$(SRC_DIR)ft_put/ft_putnbr_fd.c \
			$(SRC_DIR)ft_put/ft_putstr_fd.c \

FTTO_DIR	= $(SRC_DIR)ft_to/ft_atoi.c \
			$(SRC_DIR)ft_to/ft_itoa.c \
			$(SRC_DIR)ft_to/ft_tolower.c \
			$(SRC_DIR)ft_to/ft_toupper.c \

FTSTR_DIR	= $(SRC_DIR)ft_str/ft_split.c \
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
			$(SRC_DIR)ft_str/ft_substr.c \
			
FTPRINTF_DIR	= $(SRC_DIR)ft_printf/ft_printf.c \
			$(SRC_DIR)ft_printf/ft_printf_utils.c

GNL_DIR		= $(SRC_DIR)get_next_line/get_next_line.c \
			$(SRC_DIR)get_next_line/get_next_line_utils.c
			
# concatenate all source files
SRC		= $(FTIS_DIR) $(FTMEM_DIR) $(FTPUT_DIR) $(FTTO_DIR) $(FTSTR_DIR) $(FTPRINTF_DIR) $(GNL_DIR)

# Apply the pattern substitution to each source file in SRC and produce a corresponding list of object files in the OBJ_DIR
OBJ		= $(patsubst $(SRC_DIR)%.c,$(OBJ_DIR)%.o,$(SRC))

# build the library
all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)

	
$(OBJ_DIR)%.o: $(SRC_DIR)%.c
	@mkdir -p $(@D)
	@$(CC) $(INC) $(CFLAGS) -c $< -o $@


# Clean object files
clean:
	@$(RM) -r $(OBJ_DIR)
	@$(RM) .cache_exists
	echo "$(OBJs) deleted"

# Clean object files and the library
fclean: clean
	@$(RM) $(NAME)
	echo "$(NAME) deleted"

# Rebuild the library
re: fclean all

# Phony targets
.PHONY: all clean fclean re