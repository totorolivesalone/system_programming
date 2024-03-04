%{
 #include<stdio.h>
 #include<string.h> 
 char ch[8];
 int i,j; 
%}
 
char [a-zA-Z]

%%
{char}+ {
 printf("\n");
 for(i=yyleng;i>=0;i--)
 {
  for( j=0;j<i;j++)
   printf("%c",yytext[j]);
  printf("\n");
 }
}
%%

int yywrap()
{ 
 return 1;
} 

int main()
{
 yylex();
 return 0;
}
