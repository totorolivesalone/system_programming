%{
  #include<stdio.h>
  int yylex(void);
  int yyerror(char *);
%}


%token NAME NUMBER


%%
statement : NAME '=' expression
| expression { printf("=%d\n",$1);}
;
expression:expression'+' NUMBER{$$ = $1+$3;}
|expression '-' NUMBER {$$ = $1-$3;}
|expression '*' NUMBER {$$ = $1*$3;}
|expression '/' NUMBER { if ($3!=0){ $$ = $1/$3; }else { printf("Error: divide by Zero"); }
}
|NUMBER {$$=$1;}
;
%%
 

int main()
{
  yyparse();
  return 0;
}

int yyerror(char *s)
{
  printf("%s",s);
}
