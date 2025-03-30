# Compilador com Flex e Bison

Este projeto consiste em um **compilador** desenvolvido utilizando **Flex** e **Bison**, que são ferramentas para a construção de analisadores léxicos e sintáticos, respectivamente. O objetivo é processar um código-fonte e validar sua estrutura de acordo com as regras definidas.

---

## 📌 **Visão Geral**

O compilador está dividido em duas partes principais:

1. **Analisador Léxico (Scanner) - Flex**
   - Identifica **tokens** no código-fonte.
   - Filtra espaços em branco e caracteres irrelevantes.
   - Retorna os elementos que compõem a linguagem.

2. **Analisador Sintático (Parser) - Bison**
   - Verifica a **estrutura gramatical** do código.
   - Define regras sintáticas válidas.
   - Processa expressões e comandos corretamente.

Essas duas partes juntas garantem que o código seja interpretado corretamente.

---

## 🔧 **Instalação das Dependências**

Antes de compilar e executar o projeto, é necessário instalar as ferramentas Flex e Bison. No Linux, você pode instalar com:

```bash
sudo apt update
sudo apt install flex bison gcc make
```

Caso esteja utilizando Windows, pode usar o Cygwin ou WSL para rodar os comandos.

---

## 🚀 **Compilação e Execução**

### 🔹 **1. Compilar o código**
O projeto utiliza um `Makefile`, então basta executar:
```bash
make
```
Isso irá gerar o executável chamado `compilador`.

### 🔹 **2. Executar o compilador**
Para rodar o compilador e testar um código-fonte:
```bash
./compilador < arquivo_de_teste.txt
```
Isso analisará o código presente no arquivo `arquivo_de_teste.txt` e mostrará os resultados no terminal.

Caso queira limpar os arquivos gerados, utilize:
```bash
make clean
```

---

## 📖 **Como Funciona**

### ✅ **Analisador Léxico (Flex)**
O Flex lê um arquivo `.l` que contém regras para reconhecer **tokens**. Exemplo:
```c
%%
[0-9]+    printf("Número encontrado: %s\n", yytext);
[a-zA-Z]+ printf("Identificador encontrado: %s\n", yytext);
.         printf("Caractere especial: %s\n", yytext);
%%
```
Esse código reconhece **números**, **identificadores** e **caracteres especiais**.

### ✅ **Analisador Sintático (Bison)**
O Bison lê um arquivo `.y` que define a **gramática da linguagem**. Exemplo:
```c
%token NUM
%%
expr: expr '+' expr { printf("Soma\n"); }
    | expr '-' expr { printf("Subtração\n"); }
    | NUM           { printf("Número\n"); }
    ;
%%
```
Esse código permite reconhecer expressões como `3 + 5` e `10 - 2`.

---

## 🎯 **Objetivos e Aplicações**

✔ Criar um analisador léxico e sintático para validar expressões matemáticas.
✔ Construir a base de um compilador para uma nova linguagem.
✔ Aprender os conceitos de **Compiladores, Flex e Bison**.
✔ Praticar **Análise Léxica e Sintática**.

---

## 📜 **Licença**
Este projeto é livre para uso educacional e aprendizado.

---

Se tiver dúvidas ou sugestões, sinta-se à vontade para contribuir! 🚀

