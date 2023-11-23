%{  
#include<stdio.h>
char fname[25];
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
printf("Enter filename:");
scanf("%s",fname);
yyin=fopen(fname,"r");
yylex();
return 0;
fclose(yyin);
}
