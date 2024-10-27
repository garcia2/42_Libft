# Libft

Libft is a project from 42 school aimed at recreating part of the C standard library. This project helps to better understand the workings of `libc` functions and acquire essential skills in C programming.

## Table of Contents
1. [Overview](#overview)
2. [Features](#features)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Implemented Functions](#implemented-functions)
6. [Author](#author)

## Overview

Libft is a custom library written in C, composed of various functions for string manipulation, memory management, and linked list handling.

## Features

- Reimplementation of standard C library (`libc`) functions.
- Additional functions to facilitate common operations in C.
- Support for linked lists as an extension.

## Installation

To use `libft`, simply clone the repository and compile the library.

```bash
git clone https://github.com/garcia2/42_Libft
cd libft
make
```

This will generate a `libft.a` file that you can link to your projects.

## Usage

Include the header file `libft.h` in your project, then compile your code by linking the library.

```c
#include "libft.h"

// Example usage
int main(void) {
    char *str = ft_strdup("Hello, 42!");
    ft_putstr_fd(str, 1);
    free(str);
    return 0;
}
```

To compile:

```bash
gcc -Wall -Wextra -Werror main.c -L. -lft -o my_program
```

## Implemented Functions

### Standard Library Functions
- `ft_calloc`, `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`, `ft_memchr`, `ft_memcmp`
- `ft_strlen`, `ft_strdup`, `ft_strcpy`, `ft_strncat`
- `ft_strchr`, `ft_strrchr`, `ft_strnstr`, `ft_strncmp`
- `ft_atoi`, `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`
- `ft_toupper`, `ft_tolower`

### Additional Functions
- `ft_striteri`, `ft_substr`, `ft_strjoin`, `ft_strtrim`, `ft_strlcat`, `ft_split`, `ft_itoa`, `ft_strmapi`
- `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`

### Bonus Functions (Linked Lists)
- `ft_lstnew`, `ft_lstadd_front`, `ft_lstsize`, `ft_lstlast`, `ft_lstadd_back`
- `ft_lstdelone`, `ft_lstclear`, `ft_lstiter`, `ft_lstmap`

## Author

Project developed by [Nicolas Garcia](https://github.com/garcia2) as part of 42 school.
