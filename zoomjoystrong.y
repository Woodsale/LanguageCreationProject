%{
	#include <stdio.h>
%}

%union{
	int iVal;
}

%token <iVAL> INT

%token START
%token END_STATEMENT

%%
program: START statement_list END_STATEMENT 
statement_list:	statement
	|	statement statement_list
	;
statement: 	INT 	{ printf("FOUND INT: %d"); }
%%
/*
int main(int argc, char** argv){
	yyparse();
	return 0;
}*/
