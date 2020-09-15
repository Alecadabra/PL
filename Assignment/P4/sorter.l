%{
#include <stdio.h>

#include "y.tab.h"
%}

%%

[ \t]           /* whitespace */
\n              /* eol */
[0-9]+          { yylval = atoi(yytext); return VALUE; }
,               return COMMA;
\[              return OPEN;
\]              return CLOSE;

%%
