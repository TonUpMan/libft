SRCS = 	ft_bzero.c \
	ft_isalpha.c \
	ft_isdigit.c \
	ft_memcpy.c \
	ft_memset.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_memmove.c \
	ft_strlen.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strlcpy.c \
	ft_atoi.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strncmp.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_strnstr.c \
	ft_strlcat.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_strtrim.c \
	ft_split.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_striteri.c \

OBJS = $(SRCS:.c=.o)

B_SRCS = ft_lstnew_bonus.c \
	ft_lstadd_front_bonus.c \
	ft_lstadd_back_bonus.c \
	ft_lstsize_bonus.c \
	ft_lstlast_bonus.c \
	ft_lstdelone_bonus.c \
	ft_lstclear_bonus.c \
	ft_lstiter_bonus.c \
	ft_lstmap_bonus.c \

B_OBJS = $(B_SRCS:.c=.o)

NAME = libft.a

CC = cc

CFLAGS = -Wall -Werror -Wextra

all : $(NAME)

$(NAME) : $(OBJS)
	ar -rsc $(NAME) $(OBJS)

%.o : %.c
	$(CC) $(CFLAGS) -c $< -I includes

bonus : $(B_OBJS) $(OBJS)
	ar -rsc $(NAME) $(OBJS) $(B_OBJS)

clean : 
	rm -rf $(OBJS) $(B_OBJS)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : clean fclean re bonus all