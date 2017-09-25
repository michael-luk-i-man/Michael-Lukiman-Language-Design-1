/*Michael Lukiman - Courant Institute - Priyanka Suresh - Cory Plock*/
%{
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%
\bPRINT\b|\bIF\b|\bTHEN\b|\bGOTO\b|\bINPUT\b|\bLET\b|\bGOSUB\b|\bRETURN\b|\bCLEAR\b|\bLIST\b|\bRUN\b|\bEND\b	{ return statement; }

[ \n\r]|[ \r]	{ return line;
\<|\>|\=	{ cout << "Found a relop:" << yytext <<endl; }
[0-9]+	{ yylval.ival = atoi(yytext); return numer } cout << "Found a digit:" << yytext <<endl;  cout << "Found a digit:" << yytext <<endl; re
\*|\/ 	{ cout << "Found a muldiv:" << yytext <<endl; } cout << "Found a digit:" << yytext <<endl; 
\+|\-	{ cout << "Found a plumin:" << yytext <<endl; }
[A-Z]+	{ cout << "Found a var:" << yytext <<endl; }
\,	{ cout << "Found a comma:" << yytext <<endl; }
\"[a-zA-Z0-9_ ]+\"	 { cout << "Found a string:" << yytext <<endl; }
\(	{ cout << "Found a lparen:" << yytext <<endl; } 
\)	{ cout << "Found a rparen" << yytext <<endl; }
%%
int main(int, char**) {
	FILE *myfile = fopen("four", "r");
	if (!myfile) {
		cout << "Cannot open." << endl;
		return -1;
	}
	yyin = myfile;
	yylex();
}
