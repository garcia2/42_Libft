SRCS	= ft_isalpha.c\
		ft_isdigit.c\
		ft_isalnum.c\
		ft_isascii.c\
		ft_isprint.c\
		ft_strlen.c\
		ft_memset.c\
		ft_bzero.c\
		ft_memcpy.c\
		ft_memmove.c\
		ft_strlcpy.c\
		ft_strlcat.c\
		ft_toupper.c\
		ft_tolower.c\
		ft_strchr.c\
		ft_strrchr.c\
		ft_strncmp.c\
		ft_memchr.c\
		ft_memcmp.c\
		ft_strnstr.c\
		ft_atoi.c\
		ft_calloc.c\
		ft_strdup.c\
		ft_substr.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_split.c\
		ft_itoa.c\
		ft_strmapi.c\
		ft_striteri.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\

SRCS_BONUS	= ft_lstnew.c\
		ft_lstadd_front.c\
		ft_lstsize.c\
		ft_lstlast.c\
		ft_lstadd_back.c\
		ft_lstdelone.c\
		ft_lstclear.c\
		ft_lstiter.c\
		ft_lstmap.c\

OBJDIR	= objs
OBJS	= ${SRCS:.c=.o}
OBJS	:= $(addprefix $(OBJDIR)/, $(OBJS))

OBJS_BONUS	= ${SRCS_BONUS:.c=.o}
OBJS_BONUS	:= $(addprefix $(OBJDIR)/, $(OBJS_BONUS))

NAME	= libft.a

CC	= gcc

RM	= rm -f

CFLAGS	= -Wall -Wextra -Werror

# Règle pour tout compiler
all: ${NAME}

# Compilation des fichiers objets
$(OBJDIR)/%.o: %.c | $(OBJDIR)
		@${CC} ${CFLAGS} -c $< -o $@

# Création du dossier pour les fichiers objets s'il n'existe pas
$(OBJDIR):
		@mkdir -p $(OBJDIR)

# Création de la bibliothèque
${NAME}: 
		@$(MAKE) ${OBJS} --no-print-directory &
		@echo -n "Compiling ${NAME} "
		@for i in 1 2 3 4 5; do \
			sleep 0.35; \
			echo -n "."; \
		done
		@echo " Done."
		@ar rc ${NAME} ${OBJS}


# Compilation avec les fichiers bonus
bonus: ${NAME}
		@echo "Adding bonus objects to ${NAME}..."
		@$(MAKE) ${OBJS_BONUS} --no-print-directory
		@ar rc ${NAME} ${OBJS_BONUS}
		@echo "Bonus objects added to ${NAME}."

# Nettoyage des fichiers objets
clean:		
		@${RM} ${OBJS} ${OBJS_BONUS}
		@rmdir $(OBJDIR) 2> /dev/null || true
		@echo "Cleaned up object files."

# Nettoyage complet
fclean: clean
		@${RM} ${NAME}
		@echo "Fully cleaned ${NAME}."

# Rebuild complet
re: fclean all

.PHONY: all clean fclean re bonus
