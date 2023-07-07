%{
#include <stdio.h>
%}
%{
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int yylex();
int yyparse();
void yyerror(const char* msg);
%}

%token QUESTION EOL

%%

input:
    | input line
    ;

line:
    QUESTION EOL {
        const char* sentences[] = {
            "Meow!",
            "Purr!",
            "Meow-meow!",
            "Meow-purr!",
            "Purr-meow!"
        };
        int num_sentences = sizeof(sentences) / sizeof(sentences[0]);
        srand(time(NULL));
        int random_index = rand() % num_sentences;
        printf("%s\n", sentences[random_index]);
    }
    ;

%%

int main() {
    yyparse();
    return 0;
}

void yyerror(const char* msg) {
    fprintf(stderr, "Error: %s\n", msg);
}

int yywrap() {
    return 1;
}
extern char* yytext;
extern int yylineno;

main (int argc, char **argv) {
  yyparse ();
}

yyerror (char *s) {
  fprintf (stderr, "Fehler in Zeile %d bei '%s': %s\n",yylineno,yytext,s);
}
