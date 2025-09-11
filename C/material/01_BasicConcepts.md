# Basic Concepts in C

## 1. Comments in C
Comments in C are used to explain code and make it more readable. They are ignored by the compiler.

### Single-line comment:
```c
// This is a single-line comment
printf("Hello, World!\n");
```

### Multi-line comment:
```c
/* This is a
   multi-line comment */
printf("Hello, World!\n");
```

---

## 2. The Preprocessor in C
The C preprocessor is used to process code before compilation. It handles directives like `#define` and `#include`.

### Example:
```c
#define PI 3.14159  // Defining a constant
#include <stdio.h>  // Including a header file
```

---

## 3. The `#include` Statement
The `#include` directive is used to include standard or user-defined header files in a program.

### Example:
```c
#include <stdio.h>  // Includes the standard input-output library
int main() {
    printf("Hello, World!\n");
    return 0;
}
```

---

## 4. Displaying Output in C
To display output, we use the `printf` function from `stdio.h`.

### Example:
```c
#include <stdio.h>
int main() {
    printf("Welcome to C programming!\n");
    return 0;
}
```
**Output:**
```
Welcome to C programming!
```

---

## 5. Reading Input from the Terminal
The `scanf` function is used to take input from the user.

### Example:
```c
#include <stdio.h>
int main() {
    int age;
    printf("Enter your age: ");
    scanf("%d", &age);
    printf("You are %d years old.\n", age);
    return 0;
}
```
**Example Run:**
```
Enter your age: 21
You are 21 years old.
```

---

## Summary
- **Comments** help make code readable.
- **The Preprocessor** processes code before compilation.
- **`#include`** is used to import header files.
- **`printf`** prints output to the screen.
- **`scanf`** reads input from the user.

> 📚 This is part of the C chapter.
 
