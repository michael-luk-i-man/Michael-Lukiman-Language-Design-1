%{
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%
[ \t\n]		;
PRINT|IF|THEN|GOTO|INPUT|LET|GOSUB|RETURN|CREAN|LIST|RUN|END	{ cout << "Found a keyword:" << yytext <<endl; }

[ \n\r]|[ \r]	{ cout << "Found a cr:" << yytext <<endl; }
\<|\>|\=	{ cout << "Found a relop:" << yytext <<endl; }
[0-9]	{ cout << "Found a digit:" << yytext <<endl; }
\*|\/ 	{ cout << "Found a muldiv:" << yytext <<endl; }
\+|\-	{ cout << "Found a plumin:" << yytext <<endl; }
[A-Z]	{ cout << "Found a var:" << yytext <<endl; }
\,	{ cout << "Found a comma:" << yytext <<endl; }
\"[a-zA-Z0-9_]+\" { cout << "Found a string:" << yytext <<endl; }
\(	{ cout << "Found a lparen:" << yytext <<endl; } 
\)	{ cout << "Found a rparen" << yytext <<endl; }

