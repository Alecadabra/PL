# Alec Maughan PL Assignment Week 4 Yacc/Lex Sorter Makefile ---------------- #

# Values -------------------------------------------------------------------- #

# Base name of program
NAME = sorter

# Source files
SRC = $(NAME).y $(NAME).l

# Executable file
EXEC = $(NAME)

# Generated files
GENERATED = $(EXEC) y.tab.* lex.yy.*

# Tasks --------------------------------------------------------------------- #

all                 : $(SRC) $(EXEC)


lex.yy.c lex.yy.h   : $(NAME).l
	lex $(NAME).l


y.tab.c y.tab.h     : lex.yy.c lex.yy.h $(NAME).y
	yacc -d $(NAME).y


$(EXEC)             : lex.yy.c y.tab.c
	cc lex.yy.c y.tab.c -o $(EXEC)


run                 : $(EXEC)
	./$(EXEC)


clean               :
	rm -rf $(GENERATED)
