# Alec Maughan PL Assignment Week 3 ADA Bubble sort Makefile ---------------- # 

SRC_NAME = bubblesort.adb
EXEC_NAME = bubblesort

compile: $(SRC_NAME)
	gnatmake $(SRC_NAME)

run: compile
	./$(EXEC_NAME)

clean:
	rm -f $(EXEC_NAME) *.o *.ali
