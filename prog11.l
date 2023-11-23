%{
#include<stdio.h>
%}
alpha [a-zA-Z0-9]*
%%
[0-9]* {printf("%s is a digit",yytext);}
[a-zA-Z]* {printf("%s is a character",yytext);}
{alpha} {printf("Alpha-numeric string");}
%%
int yywrap()
{
}
int main()
{
printf("Enter input:");
yylex();
return 0;
}

