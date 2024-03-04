%{
#include<stdio.h>
#include<string.h>
int count=0;
char longest[50];
%}

%%

[a-zA-Z]+ {
if(yyleng > count)
{
count= yyleng;
strcpy(longest, yytext);
}
}

%%

int main()
{
yyin=fopen("Input1.txt", "r");
yylex();
printf("The longest word is: %s", longest);
return 0;
}

int yywrap()
{return 1;}