%{
#include<stdio.h>
%}
%%
[\t\n ] {}
int|float|char|void {printf("%s is a keyword\n",yytext);}
^[a-zA-Z][a-zA-Z0-9]* {printf("%s is an identifier\n",yytext);}
\+|\-|\*|\/ {printf("%s is an operator\n",yytext);}
\!|,|\.|\? {printf("%s is a punctuation mark\n",yytext);}
[0-9]* {printf("%s is a constant\n",yytext);}
. {}
%%
int yywrap()
{
}
int main()
{
yylex();
return 0;
}
