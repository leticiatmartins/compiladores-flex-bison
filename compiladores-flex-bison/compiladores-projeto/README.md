# Projeto de Compiladores

Este projeto contém um analisador léxico e sintático básico usando **Flex** e **Bison** para interpretar expressões matemáticas simples com operadores aritméticos.

## Como executar:

1. Compile o projeto com `make`.
2. Execute o programa com `./compilador`.
3. Digite uma expressão como `3 + 4` e pressione `Ctrl+D` para encerrar.

## Arquitetura

- **lexer.l**: Define os tokens reconhecidos pelo analisador léxico.
- **parser.y**: Define a gramática e as regras de sintaxe para a análise.

