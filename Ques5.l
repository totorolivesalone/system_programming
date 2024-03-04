%{
 char ch;
 int id;
%}

%%
^[ \t]*(int|float|double|char) { 
 ch=input();
 while(1)
 {
  if(ch==',')
   id++;
  else if(ch==';')
  {
   id++;
   break;
  }
  ch=input();
 }
}
.|[\n] ;
%%
 
int yywrap(){
 return 1;
} 

int main()
{ 
 yyin=fopen("Input.c","r");
 yylex();
 printf("\nTotal identifiers is %d\n",id);
}
