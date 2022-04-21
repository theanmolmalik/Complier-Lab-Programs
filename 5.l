%{
#include<stdio.h>
int lc=0,sc=0,tc=0,chc=0,word=0;
%}
%%
\n {lc++;}
[ ] {sc++;}
\t {tc++;}
. {chc++;}
[^ \n\t]+ {word++;}
%%
int yywrap(void){}
int main()
{
    extern FILE *yyin , *yyout;
    yyin = fopen("input.txt", "r");
    yylex();
    printf("\n total lines=%d\n",lc);
    printf("\n total space=%d\n",sc);
    printf("\n total tabs=%d\n",tc);
    printf("\n total character=%d\n",chc);
    printf("\n total word=%d\n",word);
    return 0;
}