# Character and Strings in C

## 1. Characters in C
In C, characters are represented using the `char` data type and are enclosed in single quotes (`'A'`). Each character is stored as an integer value based on the ASCII table.

### Syntax:
```c
char variable_name = 'A';
```

### Example:
```c
#include <stdio.h>

int main() {
    char letter = 'A';
    printf("Character: %c\n", letter);
    return 0;
}
```

**Output:**
```
Character: A
```

## 2. Strings in C
A **string** in C is an array of characters terminated by a null character (`\0`).

### Syntax:
```c
char string_name[] = "Hello";
```

### Example:
```c
#include <stdio.h>

int main() {
    char greeting[] = "Hello, World!";
    printf("%s\n", greeting);
    return 0;
}
```

**Output:**
```
Hello, World!
```

## 3. Declaring and Initializing Strings
### a) Using Character Array
```c
char str[] = "C Programming";
```
### b) Using Pointers
```c
char *str = "C Programming";
```

## 4. String Input and Output
### a) Using `scanf()`
```c
#include <stdio.h>

int main() {
    char name[20];
    printf("Enter your name: ");
    scanf("%s", name);
    printf("Hello, %s!\n", name);
    return 0;
}
```
**Input:** `Dokja`

**Output:**
```
Hello, Dokja!
```

> ⚠ **Note:** `scanf()` reads only a single word. Use `gets()` or `fgets()` to read full sentences.

### b) Using `fgets()` (Safer Way)
```c
#include <stdio.h>

int main() {
    char sentence[50];
    printf("Enter a sentence: ");
    fgets(sentence, sizeof(sentence), stdin);
    printf("You entered: %s", sentence);
    return 0;
}
```

## 5. String Functions (`string.h`)
C provides several built-in functions for string manipulation.

| Function | Description |
|----------|-------------|
| `strlen(str)` | Returns the length of the string |
| `strcpy(dest, src)` | Copies one string to another |
| `strcat(dest, src)` | Concatenates two strings |
| `strcmp(str1, str2)` | Compares two strings |

### Example of String Functions:
```c
#include <stdio.h>
#include <string.h>

int main() {
    char str1[20] = "Hello";
    char str2[20] = "World";
    char str3[20];
    
    strcpy(str3, str1);
    printf("Copied String: %s\n", str3);
    
    strcat(str1, str2);
    printf("Concatenated String: %s\n", str1);
    
    printf("Length of str1: %lu\n", strlen(str1));
    
    int cmp = strcmp("apple", "banana");
    printf("Comparison Result: %d\n", cmp);
    
    return 0;
}
```

**Output:**
```
Copied String: Hello
Concatenated String: HelloWorld
Length of str1: 10
Comparison Result: -1
```

## 6. Conclusion
- **Characters** in C are stored as ASCII values.
- **Strings** are arrays of characters terminated by `\0`.
- Use `string.h` functions for common string operations.
- Always ensure proper memory allocation for strings in C.

> 📚 This is part of the C chapter.
