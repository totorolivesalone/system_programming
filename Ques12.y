%{
 #include<stdio.h>
 int valid=1;
%}

%token A B

%%
start : A start B
|
;
%%

int yyerror()
{
 valid=0;
 printf("\nInvalid pattern!!\n");
 return 0;
}


int main()
{
 printf("\nEnter the pattern:- ");
 yyparse();
 if(valid)
 {
  printf("\nValid pattern!!\n");
 }
}
