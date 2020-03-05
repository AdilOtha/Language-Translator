%{
	int count =0;
}%

%%
[a-z]/[A-Z]([a-z]/[A-Z]/[0-9]/\b)*			{printf("%s is an identifier\n",yytext);count++;}
[0-9]+([A-Z]/[a-z]/\b)+						{printf("%s is an identifier\n",yytext);count++;}
[0-9]+										{printf("%s is a number\n",yytext);count++;}
"+"/"-"/"/"/"%"/"#"/"?"						{printf("%s is an operator\n",yytext);count++;}
.											{printf("%s is not a valid i/p\n",yytext);count++;}
%%
int yywrap(){}

int main(){
	yylex();
	printf("No. of tokens in i/p: %d",count);
	return 0;
}