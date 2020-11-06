%{
#include <stdio.h>
#include <stdlib.h>

int yyparse();
int yylex();

// Essentially an ArrayList structure, but it starts at zero size and is only
// resized by one each time
int listIdx = 0;
int* list = NULL;
int listSize = 0;

void yyerror(const char *str)
{
    fprintf(stderr, "%s\n", str);
}

int yywrap()
{
    return 1;
}

int main()
{
    list = (int*)malloc(0);
    yyparse();
    free(list);
    list = NULL;
}

void addToList(int val) {
    // It's horribly innificent, but this just reconstructs the list with
    // an extra free element
    listSize++;
    int *newList = (int*)malloc(sizeof(int) * listSize);

    for(int i = 0; i < listSize - 1; i++) {
        newList[i] = list[i];
    }
    free(list);
    list = newList;

    list[listIdx] = val;
    listIdx++;
}

void sort() {
    // Bubble sort, adapted from my ADA bubblesort
    int swapped = 0;
    int temp;

    for(int i = 0; i < listSize - 1; i++) {
        swapped = 0;
        for(int j = 0; j < listSize - 1; j++) {
            if(list[j] > list[j + 1]) {
                temp = list[j];
                list[j] = list[j + 1];
                list[j + 1] = temp;
                swapped = 1;
            }
        }

        if(!swapped) break;
    }
}

%}

%token VALUE COMMA OPEN CLOSE

%%

lists:
    lists list
    |
    list
    ;

list:
    OPEN CLOSE
    {
        printf("[]\n");
    }
    |
    OPEN list_content CLOSE
    {
        // Sort the list
        sort();

        // Print the list
        printf("[%d", list[0]);
        for(int i = 1; i < listSize; i++) {
            printf(", %d", list[i]);
        }
        printf("]\n");

        free(list);
        listSize = 0;
        listIdx = 0;
        list = (int*)malloc(0);
    }
    ;

list_content:
    VALUE
    {
        addToList($1);
    }
    |
    list_content COMMA VALUE
    {
        addToList($3);
    }
    ;

%%
