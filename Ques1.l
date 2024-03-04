%{
#include<stdio.h>
int lines=1, chars=0;
%}

%%
[\n] {lines++;}
[a-zA-Z0-9] {chars++;}
[^ \t \n]+ {chars+=yyleng;} //yyleng= length of the matched string
%%

int main()
{
  yyin= fopen("Input.txt", "r");
  yylex();
  printf("No of lines in the file: %d", lines);
  printf("\n");
  printf("No of characters in the file: %d", chars);
  printf("\n");
  return 0;
}

int yywrap()
{
  return 1;
}
