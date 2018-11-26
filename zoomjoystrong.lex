%{
	#include <stdio.h>
	#include "zoomjoystrong.tab.h"
%}

%%
END 		{ printf("END\n"); }		
;		{ printf("END_STATEMENT\n"); }		
POINT 		{ printf("POINT\n"); }		
LINE		{ printf("LINE\n"); }		
CIRCLE 		{ printf("CIRCLE\n"); }		
RECTANGLE	{ printf("RECTANGLE\n"); }	
SET_COLOR	{ printf("COLOR\n");}		
[0-9]+		{ printf("INT\n"); } 		
[0-9]+,.,[0-9]+	{ printf("FLOAT\n"); }		
\t,\n, 		;	
%%

int main(int argc, char** argv){
	//zoomjoystrong.lex(); 
	return 0;
}
