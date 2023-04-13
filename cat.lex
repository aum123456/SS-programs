%{
// This program mimics the working of `cat` command in Linux
#include <stdio.h>
%}
%%
.|\n {ECHO;}
%%
int yywrap() {}
int main() {
        printf("Enter text: ");
        yylex();
}