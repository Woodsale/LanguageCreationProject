%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "zjs.h"
	#define YYSTYPE int

	extern YYSTYPE yylval;
	int yylex();
	void yyerror(const char* err);
%}

%token INT
%token FLOAT
%token VAR
%token END_STATEMENT
%token END
%token POINT
%token LINE
%token CIRCLE
%token RECTANGLE
%token COLOR
%token INVALID_CHAR


%%

statement_list:	statement END_STATEMENT
	|	statement END_STATEMENT statement_list
	| 	END END_STATEMENT {finish();}
	;
statement: 	POINT INT INT {point($2,$3);}
	|	LINE INT INT INT INT {line($2,$3,$4,$5);}
	|	CIRCLE INT INT INT {circle($2,$3,$4);}
	|	RECTANGLE INT INT INT INT {rectangle($2,$3,$4,$5);}
	|	COLOR INT INT INT {set_color($2,$3,$4);}
	;
%%

void yyerror(const char *s){
	printf("%s",s);
}

int main(int argc, char** argv){
	setup();
	yyparse();
	return 0;

}
