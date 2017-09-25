/*Michael Luiman - Courant Institute - Priyanka Suresh - Cory Plock
tinybasic.l*/
%{
#include <iostream>
#include <stdlib.h>
#include "tinybasic.tab.h" 
using namespace std;
%}

%option noyywrap

%%

                       
[ /t/r/n]+	{ /* whitespace */ }
\bPRINT\b 				{ return PRINT; }  
\bIF\b 					{ return IF; }
\bTHEN\b 				{ return THEN; }
\bGOTO\b 				{ return GOTO; }
\bINPUT\b 				{ return INPUT; }
\bLET\b 				{ return LET; }
\bGOSUB\b 				{ return GOSUB; }
\bRETURN\b 				{ return RETURN; }
\bCLEAR\b 				{ return CLEAR; }
\bLIST\b 				{ return LIST; }
\bRUN\b 				{ return RUN; }
\bEND\b					{ return END; } 
\<|\>|\=			{ return RELOP; }
[ \n\r]|[ \r]		{ return CR; }
[0-9]+				{ return DIGIT;  }
\*|\/ 				{ return MULDIV; } 
\+|\-				{ return PLUMIN; }
\,					{ return COMMA; }
\"[a-zA-Z0-9_ ]+\"	{ return STRING; }
[a-zA-Z0-9_]+		{ return VAR; }
\(					{ return LPAREN; } 
\)					{ return RPAREN; }

%%
