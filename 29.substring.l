%{
int i;
%}
%%
[a-z A-Z]* { for(i=0;i<=yyleng;i++) 
              { if((yytext[i]=='a')&&(yytext[i+1]=='b')&&(yytext[i+2]=='c'))
                { yytext[i]='A';
                  yytext[i+1]='B';
                  yytext[i+2]='C';
                }
              }
             printf("%s",yytext);
            }

[\t]* return 1;
.* {ECHO;}
\n {printf("%s",yytext);}
%%
int main()
{
yylex();
}
int yywrap()
{
return 1;
}

output:
C:\Users\admin>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\admin>flex substring.l.txt

C:\Users\admin>set path=C:\MinGW\bin

C:\Users\admin>gcc lex.yy.c

C:\Users\admin>a
abcdefghjikabcj
ABCdefghjikABCj
