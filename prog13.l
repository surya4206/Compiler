%{
#include<stdio.h>
%}
%%

(and|or|but|because|if|then|nevertheless)+ {printf("Compound sentence");}
[0-9]*[a-z A-Z]* {printf("Not a floating point number");}
%%
int yywrap()
{
}
int main()
{
yylex();
return 0;
}
