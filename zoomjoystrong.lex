%{
	#include <stdio.h>
	#include "zoomjoystrong.tab.h"
%}

%%
end 		{ return END; }		
;		{ return END_STATEMENT; }		
point 		{ return POINT; }		
line		{ return LINE; }		
circle 		{ return CIRCLE; }		
rectangle	{ return RECTANGLE; }	
set_color	{ return COLOR; }		
[0-9]+		{ yylval=atoi(strdup(yytext));return INT; } 		
[0-9]+\.[0-9]+	{ return FLOAT; }		
[\t|' '|\n] 	;	
.		{ return INVALID_CHAR; }

%%
/*
int main(int argc, char** argv){
	
	yylex();
	return 0;
}*/

