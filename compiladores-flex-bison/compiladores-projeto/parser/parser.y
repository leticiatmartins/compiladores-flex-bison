%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);    // Declara a função do Flex
void yyerror(const char *s);  // Para erros de sintaxe
%}

%token NUM PLUS MINUS TIMES DIVIDE LPAREN RPAREN

%%

expressao:
    expressao PLUS expressao      { printf("Soma\n"); }
  | expressao MINUS expressao     { printf("Subtração\n"); }
  | expressao TIMES expressao     { printf("Multiplicação\n"); }
  | expressao DIVIDE expressao    { printf("Divisão\n"); }
  | LPAREN expressao RPAREN       { printf("Parênteses\n"); }
  | NUM                           { printf("Número: %d\n", $1); }
  ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Erro sintático: %s\n", s);
}

int main(void) {
    printf("Digite uma expressão (Ctrl+D para encerrar):\n");
    yyparse();  // Inicia a análise sintática
    return 0;
}
