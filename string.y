//Yacc part
%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B
%%
str : S \n;
S : A S B
  | ;
%%

int main()
{
printf("Enter the string\n");
yyparse();
printf("Valid\n");
}

int yyerror()
{
printf("Invalid\n");
exit(0);
}
