%{
 #include<stdio.h>
 #include<stdlib.h>
%}


%token A B NL


%%
stmt: S B NL {printf("Valid string\n");
exit(0);}
;
S: A A A A A A A A A A X
;
X: A X
|
;
%%
 
int yyerror(char *msg)
{
 printf("Invalid String!!!\n");
 exit(0);
}

main()
{
 printf("Enter the string\n");
 yyparse();
}
