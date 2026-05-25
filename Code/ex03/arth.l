%{
#include "y.tab.h"
#include <stdio.h>
%}

%%

"="     { printf("\nOperator is EQUAL"); return '='; }
"+"     { printf("\nOperator is PLUS"); return PLUS; }
"-"     { printf("\nOperator is MINUS"); return MINUS; }
"/"     { printf("\nOperator is DIVISION"); return DIVISION; }
"*"     { printf("\nOperator is MULTIPLICATION"); return MULTIPLICATION; }

[a-zA-Z][a-zA-Z0-9]* {
    printf("\nIdentifier is %s", yytext);
    return ID;
}

\n      { return 0; }

.       { return yytext[0]; }

%%

int yywrap()
{
    return 1;
}
