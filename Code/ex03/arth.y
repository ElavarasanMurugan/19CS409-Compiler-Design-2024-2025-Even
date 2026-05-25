%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(char *s);
int yylex(void);
%}

%token ID PLUS MINUS MULTIPLICATION DIVISION

%%

statement:
      ID '=' E
      {
          printf("\nValid arithmetic expression\n");
      }
      ;

E:
      E PLUS ID
    | E MINUS ID
    | E MULTIPLICATION ID
    | E DIVISION ID
    | ID
    ;

%%

int main()
{
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}

void yyerror(char *s)
{
    printf("\nInvalid arithmetic expression\n");
}
