%{
int nmacro, nheader;
%}
%%
^#define { nmacro++; }
^#include { nheader++; }
.|\n {  }
%%
int yywrap(void) {
return 1;
}
int main(int argc, char *argv[]) {
yyin = fopen(argv[1], "r");
yylex();
printf("Number of macros defined = %d\n", nmacro);
printf("Number of header files included = %d\n", nheader);
fclose(yyin);
}

output:
Microsoft Windows [Version 10.0.19045.3086]
(c) Microsoft Corporation. All rights reserved.

C:\Users\admin>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\admin>flex marco.l.txt

C:\Users\admin>set path=C:\MinGW\bin

C:\Users\admin>gcc lex.yy.c

C:\Users\admin>a.exe sam.c
Number of macros defined = 1
Number of header files included = 2
