%{
  #include "Ques9.tab.h"
  extern yylval;
%}


/* defined section */
%%
[0-9]+ {yylval=atoi(yytext); return NUMBER;} //this is send to the yacc code as token INTEGER
[a-zA-Z]+ {return ID;}	//this is send to the yacc code as token ID [\t]+ ;
\n {return 0;}
. {return yytext[0];}
%%


int yywrap()
{
  return 1;
}
