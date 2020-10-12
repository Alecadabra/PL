# Alec Maughan PL Assignment Week 7 C++ Book Sorter Makefile ---------------- #

# Values -------------------------------------------------------------------- #

# Base name of program
NAME = BookSorter

# Source files
SRC = $(NAME).cpp $(NAME).h

# Executable file
EXEC = $(NAME)

# Generated files
GENERATED = $(EXEC)

# C compiler
CC = g++
CCFLAGS = -Wall -Werror -Wextra -ansi -pedantic
LINKS = 

# Valgrind flags
VALGRIND_FLAGS = --leak-check=full --track-origins=yes

# Conditions ---------------------------------------------------------------- #

ifdef VALGRIND
CFLAGS += -g
endif

# Tasks --------------------------------------------------------------------- #

all			: $(SRC) $(EXEC)

$(EXEC)		: $(SRC)
	$(CC) $(CCFLAGS) -o $(EXEC) $(NAME).cpp $(LINKS)

run			: $(EXEC)
	./$(EXEC)

clean		:
	rm -rf $(GENERATED)

valgrind	:
	make clean >/dev/null
	make VALGRIND=1 >/dev/null
	valgrind $(VALGRIND_FLAGS) ./$(EXEC)

