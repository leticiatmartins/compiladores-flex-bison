CC = gcc
CFLAGS = -Wall

# Usando o caminho correto para a biblioteca libfl
LDFLAGS = -L/opt/homebrew/Cellar/flex/2.6.4_2/lib -lfl

OBJ = lex.yy.c parser.tab.c
EXEC = compilador

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $(EXEC) $(LDFLAGS)

lex.yy.c: lexer/lexer.l
	flex lexer/lexer.l

parser.tab.c: parser/parser.y
	bison -d parser/parser.y

clean:
	rm -f $(EXEC) $(OBJ) parser.tab.h
