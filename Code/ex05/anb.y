%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);
void yyerror(const char *s);
%}

%token A B NL

%%

stmt :
      S NL
      {
          printf("Valid String\n");
          exit(0);
      }
      ;

S :
      A S B
    |
      /* empty */
    ;

%%

int main()
{
    printf("Enter the string:\n");
    yyparse();
    return 0;
}

void yyerror(const char *s)
{
    printf("Invalid String\n");
    exit(0);
}
