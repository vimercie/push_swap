NAME=		push_swap

VPATH=		src/

OBJDIR=		obj

INCDIR=		inc

SRC=		main.c						\
			parsing.c					\
			parsing_utils.c				\
			checking.c					\
			radix_sort.c				\
			low_argc.c					\
			swap.c						\
			ss.c						\
			push.c						\
			rotate.c					\
			rr.c						\
			r_rotate.c					\
			rrr.c


OBJ=		${addprefix ${OBJDIR}/,		\
			${SRC:.c=.o}}

INC=		${INCDIR}/push_swap.h

LIB=		Libft/libft.a

CC=			cc

CFLAGS=		-Wall -Wextra -Werror

all:		lib ${OBJDIR} ${NAME}

${NAME}:	${OBJ} ${INC}
			${CC} ${OBJ} ${LIB} -o ${NAME}

lib:
			make -C Libft

${OBJDIR}:
			mkdir -p obj

${OBJDIR}/%.o:	%.c ${INC} Makefile
				${CC} ${CFLAGS} -c $< -o $@


clean:
			rm -rf ${OBJDIR}
			make clean -C Libft

fclean:		clean
			${RM} ${NAME} libft.a
			make fclean -C Libft

re:			fclean all

.PHONY:		all clean fclean re froggy

froggy:
	@tput setaf 2
	@echo "                 db."
	@echo "                d88P"
	@echo "                88P"
	@echo "         8P    d88"
	@echo "         8     88P                                               d88"
	@echo "        d8b   d88                                               d8P"
	@echo "        888   88P                                             d88P"
	@echo "        8888888P                                  ..od888888888P"
	@echo "        8888888     d8b                       d88888888888888P       d8b"
	@echo "        8888888   d88P                     .d888888888888888888888b d88P"
	@echo "       d88888888888'                     d88888888888888888888888888P'"
	@echo "      d888888888888                    d888888888888P888888b"
	@echo "      8888888888d88b                   888888888888P888888888b..db"
	@echo "     d88888888d88888b                  Y888888888K   Y8b     'Y8888"
	@echo "     88888888d8888888b                  Y8888888888b  Y8b      'YP"
	@echo "    d8888888d888888888b              ... 'Y8888888888b.YP  .d888888bo."
	@echo "   d8888888d8888888888P         .od888888888b88d88888888888888888888888b."
	@echo "   8888888d88888888888     .d88888888888888888888888888888888888888888888b."
	@echo "   888888d88888888888P  .d8888888888888888888888888888888888888888888888888b"
	@echo "   888888888888888888 d88888888888888888888888888888888888888888888888888888b"
	@echo "  d88888d88888888888d88888888888888888888888888888888888888888888888888888888"
	@echo "  88888d88888888888d88888888888888888888888888888888888888888888888888888888P"
	@echo "  8888d88888888888d888888888888888888888888888888888888888888888888888888888"
	@echo "  888888888888888d888888888888888888888888888888888888888888888888888888888P"
	@echo "  88888888888888d888888888888888888888888888888888888888888888888888888888P"
	@echo "  8888888888888d888888888888888888888888888888888888888888888888888888888P"
	@echo "  Y888888888888888888888888888888888888888888888888888888888888888888888P"
	@echo "   Y888Pd8888d888888888888888888888888888888888888888888888888888888888'"
	@echo "       d888d88888888888888888888         88888888888888888888888888888P"
	@echo "      .88d88888888888888888888   8888888   8888888888888888888888888P"
	@echo "      :d8888888888888888888888   8888888   8888888888888888888P  ''"
	@echo "      :88888888888888888888888   8888888   888888888888888888P"
	@echo "      :88888888888888888888888   8888888   888888888888P8888P"
	@echo "       8b88888888888888888888888          88888888888P888888"
	@echo "       888b888888888888888888888888888888  888888888Pd88888P"
	@echo "       '88888b8888888888888888888888888888  8888888Pd888888"
	@echo "        Y88888888b8888888888888888888888888888888P d888888P"
	@echo "         8888888888b888888888888888888888888888P'  8888888"
	@echo "         '88888888888Y88888888888888888888888P     8888888b"
	@echo "          Y888888888888Y8888888888888888888P       Y8888888      d88b"
	@echo "           'Y8888888888b 'Y888888888888P'           Y888888b  d888P Y88"
	@echo "             Y8888888888b     '''''''                 Y8888888888P"
	@echo "              Y8888888888b                            Y888888888b      .db"
	@echo " d8b.          Y8888888888                             Y88888888888888888P"
	@echo " 8888888888888888888888888b                             Y88888888888bo."
	@echo "d88888888888888888888888888                              Y888888888888888bo."
	@echo "Y88888888888888888888888888b                              'Y8888888888888888888b"
	@echo " 888888888888888888888888888                                Y88888888b      'P8P"
	@echo " Y888b 'Y888888888888888888P                                   'Y88888b."
	@echo "  8888b   'Y88888888888888P                                         'Y88b"
	@echo "  Y8888.     'Y8888888888P                                            'Y8b."
	@echo "   88888b         '''''                                                 'Y88"
	@echo "   Y88888b"
	@echo "    Y888888bo.  ."
	@echo "     8888888888888"
	@echo "     Y8888888b8b '"
	@echo "      Y88888888b88b"
	@echo "       Y888888b88b888b"
	@echo "        Y888888bY88b8P"
	@echo "         '888888b Y88bo."
	@echo "          Y888888b  'Y8888b"
	@echo "           Y888888b    'YP"
	@echo "            8888888b"
	@echo "            888P Y888b"
	@echo "            Y88   'Y88b";
	@echo "             Y8     Y88"
	@echo "              8b     Y8b"
	@echo "              88P     '8b"
	@echo "              '8       Y8P"