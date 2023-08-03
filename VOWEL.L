%{
#include<stdio.h>
int v=0;
int c=0;
%}
%%
[  \t\n]+;
[aeiouAEIOU]  {v++;}
[^aeiouAEIOU]  {c++;}
%%
int main( ) 
{
printf ("Enter the input String :\n");
yylex();
printf("no of vowels are %d\n",v);
printf("No of consonants are %d \n",c);
}
int yywrap( )
{
return 1;
}


OUTPUT:
Microsoft Windows [Version 10.0.19045.3086]
(c) Microsoft Corporation. All rights reserved.

C:\Users\admin>Set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\admin>flex vowel.l.txt

C:\Users\admin>set path=C:\MinGW\bin

C:\Users\admin>gcc lex.yy.c

C:\Users\admin>a
enter the string of vowels and consonents:pavani


 
