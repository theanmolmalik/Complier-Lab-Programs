%{
#include<stdio.h>
%}
%%
\<(.*)\> {printf("%s\n", yytext); }
. ;
%%
int yywrap(){}
int main(int argc, char*argv[])
{
    extern FILE *yyin;
    yyin= fopen("input.txt","r");
    yylex();
    return 0;
}