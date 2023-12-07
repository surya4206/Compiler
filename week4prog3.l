%{
#include<stdio.h>
%}
dig[0-9]
%%
[\t\n ] {}
{dig}*00 {printf("%s ends with 00\n",yytext);}
{dig}*222{dig}* {printf("%s has consecutive 222's\n",yytext);}
{dig}{5} {int i,count=0;
					for(i=0;i<5;i++)
					{if(yytext[i]=='5')
					 count++;
					}
					if(count>=2)
					 printf("%s contains %d 5’s\n",yytext,count);
					 else
					 printf("%s does not contain at least two 5’s\n",yytext);
					}
^1(0|1(10)*(0|11)(01*01|01*00(10)*(0|11))*1)* {printf("%s has 1 on 10th position from right end\n",yytext);}
{dig}*1{dig}{9} {printf("%s has 1 on 10th position from right end\n",yytext);}
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
