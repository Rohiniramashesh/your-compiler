%{
#include<stdio.h>
#include<stdlib.h>
%}

%token NUM
%left '+' '-'
%left '*' '/'
%%
stmt : e {printf("Result=%d\n",$1);}
     ;
e : e '+' e {$$=$1+$3;}
  | e '-' e {$$=$1-$3;}
  | e '*' e {$$=$1*$3;}
  | e '/' e {$$=$1/$3;}
  |'(' e ')' {$$=$2;}
  | NUM {$$ = $1;}
%%

int main()
{
printf("Enter the expression\n");
yyparse();
}

int yyerror()
{
printf("Invalid expression\n");
exit(0);
}
