%{
  #include "Ques12.tab.h"
%}

%%
a return A;
b return B;
.|[\n] return 0;
%%

int yywrap()
{ 
  return 1;
}
