%{
#include "Ques10.tab.h"
%}

letter [a-z]
digit [0-9]
newline [\n]

%%
{letter} { return letter ;}
{digit} { return digit ; }
{newline} { return newline ;}
. { printf("Invalid Variable\n");exit(0); } 
%%

int yywrap()
{ return 1; }
