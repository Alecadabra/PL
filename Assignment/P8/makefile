# Alec Maughan PL Assignment Week 8 Prolog FizzBuzz Makefile ---------------- #

# Values -------------------------------------------------------------------- #

# Base name of program
NAME = fizzbuzz

# Source files
SRC = $(NAME).pro

# Executable file
EXEC = $(NAME)

# Generated files
GENERATED = $(EXEC)

# Tasks --------------------------------------------------------------------- #

all			: $(SRC) $(EXEC)

$(EXEC)		: $(SRC)
	gplc $(NAME).pro

run			: $(EXEC)
	./$(EXEC)

clean		:
	rm -rf $(GENERATED)


