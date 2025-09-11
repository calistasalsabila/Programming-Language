# Functions in C

## 1. Introduction to Functions
A **function** in C is a block of code that performs a specific task. Functions help in **code reusability**, **modularity**, and **readability**.

### Advantages of Using Functions:
✅ Avoids code repetition
✅ Makes code easier to debug
✅ Enhances readability and maintainability

---

## 2. Defining and Calling Functions

### a) Function Syntax:
```c
return_type function_name(parameter_list) {
    // Function body
    return value; // (if applicable)
}
```

### b) Example:
```c
#include <stdio.h>

// Function declaration
int add(int a, int b);

int main() {
    int sum = add(5, 7); // Function call
    printf("Sum: %d\n", sum);
    return 0;
}

// Function definition
int add(int a, int b) {
    return a + b;
}
```
**Output:**
```
Sum: 12
```

---

## 3. Function Arguments and Parameters

Functions can take inputs (parameters) and return values.

### a) Function with Parameters
```c
void greet(char name[]) {
    printf("Hello, %s!\n", name);
}
```

### b) Function without Parameters
```c
void sayHello() {
    printf("Hello, World!\n");
}
```

### c) Function Returning a Value
```c
int square(int num) {
    return num * num;
}
```

---

## 4. Returning Data from Functions
A function can return a single value using the `return` statement.

### Example:
```c
#include <stdio.h>

int multiply(int a, int b) {
    return a * b;
}

int main() {
    int result = multiply(4, 3);
    printf("Multiplication: %d\n", result);
    return 0;
}
```
**Output:**
```
Multiplication: 12
```

---

## 5. Local and Global Variables

### a) Local Variables
A variable declared inside a function is **local** and can only be accessed within that function.
```c
void test() {
    int x = 10; // Local variable
    printf("x = %d\n", x);
}
```

### b) Global Variables
A variable declared outside all functions is **global** and can be accessed by any function.
```c
int x = 20; // Global variable

void printX() {
    printf("x = %d\n", x);
}
```

---

## 6. Function Prototypes
A function **prototype** declares a function before it is defined. This helps the compiler recognize it.
```c
#include <stdio.h>

// Function prototype
int add(int, int);

int main() {
    int sum = add(5, 5);
    printf("Sum: %d\n", sum);
    return 0;
}

// Function definition
int add(int a, int b) {
    return a + b;
}
```

---

## 7. Recursive Functions
A function that calls itself is called **recursion**.

### Example: Factorial Calculation
```c
#include <stdio.h>

int factorial(int n) {
    if (n == 0) return 1;
    return n * factorial(n - 1);
}

int main() {
    printf("Factorial of 5: %d\n", factorial(5));
    return 0;
}
```
**Output:**
```
Factorial of 5: 120
```

---

## 8. Conclusion
Functions help **break down complex programs** into smaller, manageable parts.
They support **parameters**, **return values**, **local/global variables**, and **recursion**.
Function **prototypes** improve code organization and readability.

---

> 📚 This is part of the C chapter.
