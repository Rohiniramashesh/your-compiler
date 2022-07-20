//recognize strings ‘aaab’, ‘abbb’, ‘ab’ and ‘a’ using the grammar (an bn n>=0).
//Lex part
%{
#include"y.tab.h"
%}

%%
a {return A;}
b {return B;}
. {return yytext[0];}
\n {return 0;}
%%
