%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(char *s);
int yylex(void);
%}

%token ID INT FLOAT DOUBLE

%%

D : T L ';'
    {
        printf("\nValid Variable Declaration\n");
    }
    ;

L : L ',' ID
  | ID
  ;

T : INT
  | FLOAT
  | DOUBLE
  ;

%%

int main()
{
    printf("Enter declaration:\n");
    yyparse();
    return 0;
}

void yyerror(char *s)
{
    printf("\nInvalid Variable Declaration\n");
}
