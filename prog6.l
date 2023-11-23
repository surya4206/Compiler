%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
^[0-9]* printf("Digit\n");
^[^0-9]|[0-9]*[a-zA-Z] printf("Not a digit\n");
.;
%%
int yywrap()
{
}
int main()
{
yylex();
return 0;
}
