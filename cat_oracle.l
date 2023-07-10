/* lexer for cat_oracle */

%option noyywrap

%{
#include "cat_oracle.tab.h"
%}

%%

"What"             {return WHAT; }
"what"             {return WHAT; }
"Who"              {return WHO; }
"who"              {return WHO; }
"Whose"            {return WHO; }
"whose"            {return WHO; }
"whom"             {return WHO; }
"Whom"             {return WHO; }
"When"             {return WHEN; }
"when"             {return WHEN; }
"Where"            {return WHERE; }
"where"            {return WHERE; }
"Which"            {return WHERE; }
"which"            {return WHERE; }
"How"              {return HOW; }
"how"              {return HOW; }

\?                 {return QUESTION; }

\n                 { return EOL; }
.                  {  }

%%

