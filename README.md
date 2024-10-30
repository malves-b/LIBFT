# LIBFT - Your First Custom C Library

![C Badge](https://img.shields.io/badge/C-00599C?style=for-the-badge&logo=c&logoColor=white)
![Makefile](https://img.shields.io/badge/Makefile-000000?style=for-the-badge&logo=makefile&logoColor=white)


Libft é um projeto do currículo da 42 que desafia os alunos a recriar funções essenciais da biblioteca padrão da linguagem C (libc) e desenvolver outras funções utilitárias adicionais. O objetivo é aprender sobre manipulação de memória, strings e gerenciamento de listas encadeadas em C, proporcionando uma sólida base para projetos futuros.

## Índice

- [Sobre o Projeto](#sobre-o-projeto)
- [Funcionalidades](#funcionalidades)
  - [Parte 1: Funções da Libc](#parte-1-funções-da-libc)
  - [Parte 2: Funções Adicionais](#parte-2-funções-adicionais)
  - [Parte 3: Bônus (Lista Encadeada)](#parte-3-bônus-lista-encadeada)
- [Compilação e Uso](#compilação-e-uso)

---

## Sobre o Projeto

Este projeto consiste em recriar funções da biblioteca C padrão, como `isalpha`, `isdigit`, `memset`, `strcpy`, entre outras. Todas as funções são implementadas do zero, replicando o comportamento e os protótipos das originais, mas com a adição do prefixo `ft_` (ex.: `strlen` torna-se `ft_strlen`). Além disso, novas funções auxiliares são criadas para expandir as funcionalidades da biblioteca. 

Este repositório representa uma biblioteca pessoal de utilitários em C, com o objetivo de ser reutilizável e modular para outros projetos.

## Funcionalidades

A `LIBFT` está dividida em três partes principais: recriação de funções da libc, funções adicionais e funções bônus para manipulação de listas encadeadas.

### Parte 1: Funções da Libc

Implementa funções da libc relacionadas a manipulação de caracteres, strings e memória:

- **Funções de Checagem de Caracteres**: `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`
- **Funções de Manipulação de Strings**: `ft_strlen`, `ft_strlcpy`, `ft_strlcat`, `ft_strchr`, `ft_strrchr`, `ft_strncmp`, `ft_strnstr`, `ft_atoi`
- **Funções de Manipulação de Memória**: `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`, `ft_memchr`, `ft_memcmp`
- **Funções de Manipulação de Maiúsculas/Minúsculas**: `ft_toupper`, `ft_tolower`
- **Funções com Alocação Dinâmica**: `ft_calloc`, `ft_strdup`

### Parte 2: Funções Adicionais

Funções adicionais que expandem as funcionalidades padrão:

- **Manipulação de Strings**:
  - `ft_substr`: Extrai uma substring de uma string.
  - `ft_strjoin`: Concatena duas strings em uma nova string.
  - `ft_strtrim`: Remove caracteres de uma string com base em um conjunto fornecido.
  - `ft_split`: Divide uma string com base em um delimitador.
  - `ft_itoa`: Converte um número inteiro em uma string.
  - `ft_strmapi`: Aplica uma função a cada caractere de uma string e gera uma nova string.
  - `ft_striteri`: Aplica uma função a cada caractere de uma string (modifica a string original).
  
- **Funções de Saída para Arquivo**:
  - `ft_putchar_fd`: Escreve um caractere em um descritor de arquivo.
  - `ft_putstr_fd`: Escreve uma string em um descritor de arquivo.
  - `ft_putendl_fd`: Escreve uma string seguida de uma nova linha em um descritor de arquivo.
  - `ft_putnbr_fd`: Escreve um número inteiro em um descritor de arquivo.

### Parte 3: Bônus (Lista Encadeada)

Uma coleção de funções para manipulação de listas encadeadas com base na estrutura:

```c
typedef struct s_list
{
    void *content;
    struct s_list *next;
} t_list;
```
- **Funções de Manipulação de Listas**:
 - ft_lstnew: Cria um novo nó com conteúdo inicializado e próximo nó como NULL.
 - ft_lstadd_front: Adiciona um novo nó no início da lista.
 - ft_lstsize: Retorna o número de elementos na lista.
 - ft_lstlast: Retorna o último nó da lista.
 - ft_lstadd_back: Adiciona um novo nó ao final da lista.
 - ft_lstdelone: Libera a memória de um único nó, aplicando uma função del para limpar seu conteúdo.
 - ft_lstclear: Libera a memória de um nó e de todos os seus sucessores, limpando conteúdo com a função del e definindo o ponteiro inicial como NULL.
 - ft_lstiter: Itera pela lista e aplica a função f ao conteúdo de cada nó.
 - ft_lstmap: Cria uma nova lista aplicando a função f ao conteúdo de cada nó da lista original. Caso a alocação de um novo nó falhe, a função del é aplicada para garantir a liberação apropriada de memória.

## Compilação e Uso

### Para Compilar a Biblioteca `libft.a`

Execute o comando abaixo para compilar a biblioteca principal:

```bash
make
```

Para compilar a parte bônus (funções de lista encadeada), use o comando:

```bash
make bonus
```


