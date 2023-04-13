%{
// This program validates binary infix expressions
// Works only with addition and multiplication operators.
#include <stdio.h>
%}
%%
[a-zA-Z0-9]+[*|+][a-zA-Z0-9]+ {printf("Valid.\n");}
[a-zA-Z0-9]+ {printf("Invalid.\n");}
[*|+]+ {printf("Invalid.\n");}
[\t ] {printf("Invalid.\n");}
%%
int yywrap() {}
int main() {
        yylex();
}