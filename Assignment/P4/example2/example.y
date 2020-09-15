%{
#include <stdio.h>

#define YYSTYPE char const*

int yyparse();
int yylex();

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
    yyparse();
}
%}

%token ZONETOK FILETOK WORD FILENAME QUOTE OBRACE EBRACE SEMICOLON

%%

commands:

    |
    commands command SEMICOLON
    ;

command:
    zone_set
    ;

zone_set:
    ZONETOK quotedname zonecontent
    {
        printf("Complete zone for '%s' found\n", $2);
    }
    ;

zonecontent:
    OBRACE zonestatements EBRACE
    ;
    




quotedname:
    QUOTE FILENAME QUOTE
    {
        $$=$2;
    }
    ;



    
zonestatements:
    |
    zonestatements zonestatement SEMICOLON
    ;

zonestatement:
    statements
    |
    FILETOK quotedname
    {
        printf("A zonefile name '%s' was encountered\n", $2);
    }
    ;

block:
    OBRACE zonestatements EBRACE SEMICOLON
    ;

statements:
    | statements statement
    ;

statement:
    WORD
    | block
    | quotedname
    ;




%%
