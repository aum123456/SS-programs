%{
// This program counts no. of vowels and consonants
#include <stdio.h>
int v=0; // vowels counter
int c=0; // consonants counter
%}
%%
[aeiouAEIOU] {v++; printf("\n%s is a vowel", yytext);}
[a-zA-Z] {c++; printf("\n%s not a vowel", yytext);}
%%
int yywrap() {}
int main() {
	yylex(); // infinite loop that runs until you provide End of Transmission interrupt, Ctrl+D, or ^D
	printf("------------\n");
	printf("No. of vowels = %d.\n", v);
	printf("No. of consonants = %d.\n", c);
}