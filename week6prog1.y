%{
#include<stdio.h>
%}

%token NUM
%left '+'
%right '-'

%%
expr:e			{printf("Valid Expression\n"); printf("Result: %d\n",$$); return 0;}
e:e'+'e			{$$=$1+$3;}
| e:e'-'e		{$$=$1-$3;}
| NUM				{$$=$1;}
;
%%

int main()
{
	printf("\nEnter an arithmetic expression: ");
	yyparse();
	return 0;
}
int yyerror()
{
	printf("Invalid Expression\n");
	return 0;
}
