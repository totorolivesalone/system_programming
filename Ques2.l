%{
#include <stdio.h>
%}

%%
[a-z] {char ch=yytext[0];
ch+=3;
if(ch>'z')
ch-=('z'+1-'a');
printf("After encryption: %c", ch);
printf("\nEnter the character: ");
}
[A-Z] {char ch=yytext[0];
ch+=3;
if(ch>'Z')
ch-=('Z'+1-'A');
printf("After encryption: %c", ch);
printf("\nEnter the character: ");
}
%%

int yywrap()
{
 return 1;
}

int main()
{
  printf("Enter the character: \n");
  yylex();
  return 0;
}