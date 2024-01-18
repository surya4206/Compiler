%{
#include <ctype.h>
#include<stdio.h>
#include<stdlib.h>
%}
%token digit
%left '+''-'
%left '*''/''%'
%right '^'
%%
S: E {printf("\n\n");}
;
E: E '+' G { printf ("+");}
| G
;
G: G '-' T { printf ("-");}
| T
;
T: T '*' H { printf("*");}
| H
;
H: H '/' I { printf ("/");}
| I
;
I: F '^' I { printf ("^");}
| F
;
F: '(' E ')'
| digit {printf("%d", $1);}
;
%%
int main()
{
printf("Enter infix expression: ");
yyparse();
}
yyerror()
{
printf("Error\n");
}
