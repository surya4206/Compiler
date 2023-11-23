%{
#include<stdio.h>
%}
%%
[+-]?([0-9]*)?[.][0-9]+ {printf("Floating point number");}
[0-9]*[a-zA-Z]* {printf("Not a floating point number");}
%%
int yywrap()
{
}
int main()
{
yylex();
return 0;
}
