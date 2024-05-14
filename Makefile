NAME				= push_swap

# the name of your library
LIBFT				= libft.a

# Directories - I added a libft directory
LIBFT_DIR			= ./libft/
SRCS_DIR			= srcs/
OBJS_DIR			= objs/

# This will allow to use the bracket notation
INCLUDES				=  -I.$(LIBFT_DIR) -I./inc/

# Compiler and CFlags - need to use cc instead of gcc
CC					= cc

# the I for includes is not a flag, it is a command line option
# therefore I removed it from the flags
CFLAGS				= -Wall -Werror -Wextra
# Debugging flags -g adds symbols for the debugger
CFLAGS				+= -g

RM					= rm -f

# Source Files
COMMANDS			=	$(SRC_DIR)commands/push.c \
						$(SRC_DIR)commands/rev_rotate.c \
						$(SRC_DIR)commands/rotate.c \
						$(SRC_DIR)commands/sort_stacks.c \
						$(SRC_DIR)commands/sort_stacks_utils.c \
						$(SRC_DIR)commands/sort_three.c \
						$(SRC_DIR)commands/swap.c

PUSH_SWAP			=	$(SRC_DIR)push_swap/handle_errors.c \
						$(SRC_DIR)push_swap/init_a_to_b.c \
						$(SRC_DIR)push_swap/init_b_to_a.c \
						$(SRC_DIR)push_swap/push_swap.c \
						$(SRC_DIR)push_swap/split.c \
						$(SRC_DIR)push_swap/stack_init.c \
						$(SRC_DIR)push_swap/stack_utils.c \
						$(SRC_DIR)push_swap/utils.c \


# Concatenate all source files
SRCS 				= $(COMMANDS) $(PUSH_SWAP)

# Apply the pattern substitution to each source file in SRCS_DIR
# and produce a corresponding list of object files in the OBJS_DIR
# SRCS is the list of source files
OBJ 				= $(patsubst $(SRCS_DIR)%.c,$(OBJS_DIR)%.o,$(SRCS))

# Build rules
# (I removed start)

$(LIBFT):
					make -C ./libft

all: 				$(NAME)

$(NAME): 			$(OBJ) $(LIBFT)
	$(CC) $(CFLAGS) $(INCLUDES) $(OBJ) $(LIBFT) -o $(NAME)

# Compile object files from source files
$(OBJ_DIR)%.o:		$(SRC_DIR)%.c
					mkdir -p $(@D)
					$(CC) $(CFLAGS) $(INC) -c $< -o $@

# replaced libft with $(LIBFT)
clean:
					$(RM) -r $(OBJS_DIR)
					make clean -C $(LIBFT_DIR)

# as above use the libft make clean
fclean: 			clean
					$(RM) $(NAME)
					make fclean -C $(LIBFT_DIR)

re: 				fclean all

# Phony targets represent actions not files
.PHONY: 			start all clean fclean re
