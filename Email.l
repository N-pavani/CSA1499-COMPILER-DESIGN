%{
#include<stdio.h>
%}
%%
[a-zA-Z0-9_]+(@[a-z]+)(.[a-z]+) {printf("%s is a valid email", yytext);}
.* {printf("It is not a valid email");}
%%
int main()
{
printf("\n Enter the email:");	
yylex();
}
int yywrap()
{
return 1;
}



output:
Microsoft Windows [Version 10.0.19045.3086]
(c) Microsoft Corporation. All rights reserved.

C:\Users\admin>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\admin>flex mail.l.txt

C:\Users\admin>set path=C:\MinGW\bin

C:\Users\admin>gcc lex.yy.c

C:\Users\admin>a

 Enter the email:pav@gmail.com
pav@gmail.com is a valid email

