%{
#include<stdio.h>
int lines =0, chars= 0, spaces=0, words=0;
%}

%%
[\n] {lines++;}
[ ]|[\t] {spaces++;}
[^ \t \n]+ {words++; chars+=yyleng;}
%%

int main()
{
  yyin= fopen("Input.c", "r");
  yylex();
  printf(" This File contains ..."); 
  printf("\n");
  printf("No of lines in the file: %d", lines);
  printf("\n");
  printf("No of spaces in the file: %d", spaces);
  printf("\n");
  printf("No of characters in the file: %d", chars);
  printf("\n");
  printf("No of words in the file: %d", words);
  printf("\n");
  return 0;
}

int yywrap()
{return 1;}
