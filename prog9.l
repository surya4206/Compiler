%{
#include<stdio.h>
%}
alpha[a-zA-Z]
digit[0-9]
%%
(float|int) {printf("Keyword");}
{alpha}({digit}|{alpha})* {printf("Identifier");}
{digit}({digit}|{alpha})* {printf("Invalid token");}
%%
int yywrap()
{
}
int main()
{
yylex();
return 0;
}
