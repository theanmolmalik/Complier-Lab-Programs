%{
%}
DIGIT [0-9]
%%
{DIGIT}* {printf("Integer");}
{DIGIT}*?\.{DIGIT}* {printf("Float");}
%%
int yywrap(){return 1;}
int main()
{
    yylex();
    return 0;
}