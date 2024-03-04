%{
  #include<stdio.h>
  int valid=1;
%}


//definition section
%token NUMBER ID	// token from lex file
%left '+' '-'	// left associative
%left '*' '/'

%%
expr: expr '+' expr	// grammer production rule
|expr '-' expr
|expr '*' expr
|expr '/' expr
|'-'NUMBER
|'-'ID
|'('expr')'
|NUMBER
|ID
;
%%


//main function


main()
{
printf("Enter the expression\n"); yyparse();
if(valid)
printf("\nExpression is valid\n");
}


//if error occured
int yyerror(char *s)
{
valid=0;
printf("\nExpression is invalid");
}
