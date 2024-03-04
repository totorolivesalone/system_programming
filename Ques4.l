%{
#include<stdio.h>
%}

digit[0-9]
letter[A-Za-z_]
opr[+ - * /]

%%
" "|"\t";
{digit}+ {printf("Integer");}
{digit}+\.{digit}+ {printf("Float");}
{opr} {printf("Operator");}
if|else|while|switch|for|char {printf("Keyword");}
{letter}({letter}|{digit})* {printf("Identifier");}
[/]{1}[/]{1}[a-zA-Z0-9]* {printf("Single Line Comment");}
[/]{1}[*]{1}[a-zA-Z0-9]*[*]{1}[/]{1} {printf("Multi Line Comment");}
.* printf("Invalid");
%%

int main()
{
  yylex();
  return 0;
}

int yywrap()
{
 return 1;
}
