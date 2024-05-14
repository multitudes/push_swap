NAME				= 	push_swap

# Directories - I added a libft directory
# in the libft you call the folder src - so I renamed teh folder to src 
LIBFT_DIR			=	./libft/
SRC_DIR				= 	src/
OBJ_DIR				= 	obj/

# the name of your library
LIBFT				= 	$(LIBFT_DIR)libft.a

# This will allow to use the bracket notation for libft. I already changed the 
# header files to use the #include<libft.h> file
INCLUDES			=  	-I.$(LIBFT_DIR) -I./inc/

# Compiler and CFlags - need to use cc instead of gcc
CC					= 	cc

# the I for includes is not a flag, it is a command line option
# therefore I removed it from the flags
CFLAGS				=	 -Wall -Werror -Wextra
# Debugging flags -g adds symbols for the debugger
CFLAGS				+= 	-g

# rm -rf removes the directory and all its contents
RM					= 	rm -rf

# Source Files
COMMANDS			=	$(SRC_DIR)commands/push.c \
						$(SRC_DIR)commands/rev_rotate.c \
						$(SRC_DIR)commands/rotate.c \
						$(SRC_DIR)commands/sort_stacks.c \
						$(SRC_DIR)commands/sort_stack_utils.c \
						$(SRC_DIR)commands/sort_three.c \
						$(SRC_DIR)commands/swap.c

PUSH_SWAP_FILES		=	$(SRC_DIR)push_swap/handle_errors.c \
						$(SRC_DIR)push_swap/init_a_to_b.c \
						$(SRC_DIR)push_swap/init_b_to_a.c \
						$(SRC_DIR)push_swap/push_swap.c \
						$(SRC_DIR)push_swap/split.c \
						$(SRC_DIR)push_swap/stack_init.c \
						$(SRC_DIR)push_swap/stack_utils.c \
						$(SRC_DIR)push_swap/utils.c \

# Concatenate all source files
SRCS 				= 	$(COMMANDS) $(PUSH_SWAP_FILES)

# Apply the pattern substitution to each source file in SRCS_DIR
# and produce a corresponding list of object files in the OBJS_DIR
# SRCS is the list of source files
OBJS 				= 	$(patsubst $(SRC_DIR)%.c,$(OBJ_DIR)%.o,$(SRCS))

# Build rules
# (I removed start) but then you need to make sure that the all rule is the first one!
# otherwise would not work!
all: 				$(NAME)

$(LIBFT):
					make -C $(LIBFT_DIR)


$(NAME): 			$(OBJS) $(LIBFT)
					$(CC) $(CFLAGS) $(INCLUDES) $(OBJS) $(LIBFT) -o $(NAME)

# Compile object files from source files
# $(@D) is a special variable in make that 
# represents the directory part of the target file name. 
# in this way the structure is preserved... like 
# obj/commands/push.o etc 
$(OBJ_DIR)%.o:		$(SRC_DIR)%.c
					mkdir -p $(@D)
					$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

# replaced libft with $(LIBFT)
# you had $(RM) -r but the flar is already in RM
clean:
					$(RM) $(OBJ_DIR)
					make clean -C $(LIBFT_DIR)

# as above use the libft make clean
fclean: 			clean
					$(RM) $(NAME)
					make fclean -C $(LIBFT_DIR)

re: 				fclean all

# Phony targets represent actions not files
.PHONY: 			start all clean fclean re
