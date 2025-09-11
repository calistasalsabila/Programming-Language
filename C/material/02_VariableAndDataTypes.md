# Variables and Data Types in C

## 1. Variables in C
A **variable** in C is a name given to a memory location where data is stored. Each variable has a **data type** that determines the type of value it can store.

### Syntax:
```c
<data_type> variable_name = value;
```

### Example:
```c
int age = 20;
float height = 5.9;
char grade = 'A';
```

## 2. Data Types in C
C provides several built-in data types categorized as follows:

### a) Primary Data Types
| Data Type | Size | Description | Example |
|-----------|------|-------------|---------|
| `int` | 4 bytes | Integer numbers | `int num = 10;` |
| `float` | 4 bytes | Floating-point numbers | `float pi = 3.14;` |
| `double` | 8 bytes | Double precision floating-point | `double bigNum = 10.123456;` |
| `char` | 1 byte | Single character | `char letter = 'A';` |

### b) Derived Data Types
| Data Type | Description |
|-----------|-------------|
| `array` | Collection of variables of the same type |
| `pointer` | Stores memory address of another variable |
| `structure` | Collection of variables of different types |
| `union` | Similar to structure but shares memory |

## 3. Format Specifiers in C
Format specifiers define the type of data that `printf()` and `scanf()` will handle.

| Format Specifier | Data Type | Example |
|------------------|----------|---------|
| `%d` | Integer | `printf("%d", 10);` |
| `%f` | Float | `printf("%f", 3.14);` |
| `%lf` | Double | `printf("%lf", 3.1415926535);` |
| `%c` | Character | `printf("%c", 'A');` |
| `%s` | String | `printf("%s", "Hello");` |
| `%x` | Hexadecimal | `printf("%x", 255);` |
| `%o` | Octal | `printf("%o", 255);` |

### Example:
```c
#include <stdio.h>

int main() {
    int num = 10;
    float pi = 3.14;
    char letter = 'A';
    
    printf("Integer: %d\n", num);
    printf("Float: %f\n", pi);
    printf("Character: %c\n", letter);
    
    return 0;
}
```

**Output:**
```
Integer: 10
Float: 3.140000
Character: A
```

## 4. Command Line Arguments in C
Command line arguments allow users to pass inputs when executing a program.

### Syntax:
```c
int main(int argc, char *argv[])
```
- `argc` (argument count) stores the number of arguments passed.
- `argv` (argument vector) is an array of character pointers listing arguments.

### Example:
```c
#include <stdio.h>

int main(int argc, char *argv[]) {
    printf("Number of arguments: %d\n", argc);
    for (int i = 0; i < argc; i++) {
        printf("Argument %d: %s\n", i, argv[i]);
    }
    return 0;
}
```

**Execution:**
```
$ ./program_name arg1 arg2
```

**Output:**
```
Number of arguments: 3
Argument 0: ./program_name
Argument 1: arg1
Argument 2: arg2
```

## 5. Conclusion
- **Variables store data in memory**
- **Data types define what kind of data a variable can hold**
- **Format specifiers are used in `printf()` and `scanf()` to specify data types**
- **Command line arguments allow passing input during execution**

> 📚 This is part of the C chapter.
