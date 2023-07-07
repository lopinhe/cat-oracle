%option noyywrap

%%

\n      { return EOL; }
.*\?    { return QUESTION; }
.       { /* Ignore all other characters */ }

%%

int yywrap() {
    return 1;
}
int main () {
  while (yylex () != 0);
  return 0;
}

int myatoi (char* string) {
  if (*string == '(')
    return atoi (string+1);
  return atoi (string);
}
