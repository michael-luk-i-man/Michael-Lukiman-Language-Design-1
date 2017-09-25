/*Michael Lukiman - Courant Institute - Priyanka Suresh - Cory Plock
 tinybasic.l*/
%{
#include <iostream>
#include <stdlib.h>
#include "tinybasic.tab.h"

%option noyywrap

%}
%%
[ /t/r/n]+	{ /* whitespace */ }
\bPRINT\b|\bIF\b|\bTHEN\b|\bGOTO\b|\bINPUT\b|\bLET\b|\bGOSUB\b|\bRETURN\b|\bCLEAR\b|\bLIST\b|\bRUN\b|\bEND\b	{ cout << "Found a keyword:" << yytext <<endl; 	
 } 
[ \n\r]|[ \r]	{ cout << "Found a cr:" << yytext <<endl; }
\<|\>|\=	{ cout << "Found a relop:" << yytext <<endl; }
[0-9]+	{ cout << "Found a digit:" << yytext <<endl; }
\*|\/ 	{ cout << "Found a muldiv:" << yytext <<endl; } 
\+|\-	{ cout << "Found a plumin:" << yytext <<endl; }
[A-Z]+	{ cout << "Found a var:" << yytext <<endl; }
\,	{ cout << "Found a comma:" << yytext <<endl; }
\"[a-zA-Z0-9_ ]+\"	 { cout << "Found a string:" << yytext <<endl; }
\(	{ cout << "Found a lparen:" << yytext <<endl; } 
\)	{ cout << "Found a rparen" << yytext <<endl; }
%%
int main(int, char**) {
	yylex();
}
