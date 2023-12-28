%{
#include<stdio.h>
#include<math.h>
%}

%token NUM
%left '+' '-'
%left '*' '/'
%left '%'
%right '^'

%%
expr:e			{printf("Valid Expression\n"); printf("Result: %d\n",$$); return 0;}
e:e'+'e			{$$=$1+$3;}
| e:e'-'e		{$$=$1-$3;}
| e'*'e     {$$=$1*$3;}
| e'/'e     {$$=$1/$3;}
| e'%'e     {$$=$1%$3;}
| e'^'e     {int prod=1;while($3--){prod*=$1;}$$=prod;}
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
