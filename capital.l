%{
#include<stdio.h>
%}

%%
[A-Z]+[ \t\n] {printf("%s is a capital letter", yytext);}
. ;
%%
int main()
{
printf("\n Enter the input string:");	
yylex();
}

int yywrap()
{
return 1;
}


OUTPUT:
Microsoft Windows [Version 10.0.19045.3086]
(c) Microsoft Corporation. All rights reserved.

C:\Users\admin>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\admin>flex cap.l.txt

C:\Users\admin>set path=C:\MinGW\bin

C:\Users\admin>gcc lex.yy.c

C:\Users\admin>a

 Enter the input string:PAVANI
PAVANI
 is a capital letter






