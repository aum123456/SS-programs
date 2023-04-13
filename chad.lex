%{
// This program identifies if you're a chad or not
#include <stdio.h>
%}
%%
[aA]um|[pP]rajwal|[rR]ishab|[rR]ahul {printf("'%s' is a chad.\n", yytext);}
[a-zA-Z]+ {printf("'%s' is not a chad.", yytext);}
[\t ]+ {;}
%%
int yywrap() {}
int main() {
        yylex();
}