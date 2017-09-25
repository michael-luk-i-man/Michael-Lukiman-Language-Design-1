%{
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%
[ \t\n]		;
\bPRINT\b|\bIF\b|\bTHEN\b|\bGOTO\b|\bINPUT\b|\bLET\b|\bGOSUB\b|\bRETURN\b|\bCLEAR\b|\bLIST\b|\bRUN\b|\bEND\b	{ cout << "Found a keyword:" << yytext <<endl; }

[ \n\r]|[ \r]	{ cout << "Found a cr:" << yytext <<endl; }
\<|\>|\=	{ cout << "Found a relop:" << yytext <<endl; }
/b[0-9]/b	{ cout << "Found a digit:" << yytext <<endl; }
\*|\/ 	{ cout << "Found a muldiv:" << yytext <<endl; }
\+|\-	{ cout << "Found a plumin:" << yytext <<endl; }
/b[A-Z]/b	{ cout << "Found a var:" << yytext <<endl; }
\,	{ cout << "Found a comma:" << yytext <<endl; }
/b\"[a-zA-Z0-9_]+\"/b { cout << "Found a string:" << yytext <<endl; }
\(	{ cout << "Found a lparen:" << yytext <<endl; } 
\)	{ cout << "Found a rparen" << yytext <<endl; }
%%
int main(int, char**) {
	yylex();
}
