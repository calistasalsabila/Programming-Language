# Pointers in C

## 1. Introduction to Pointers
A **pointer** in C is a variable that stores the memory address of another variable. Pointers allow efficient memory management and manipulation.

### Syntax:
```c
<data_type> *pointer_name;
```

### Example:
```c
int a = 10;
int *ptr = &a; // Pointer storing the address of 'a'
```

## 2. Declaring and Initializing Pointers
### a) Declaring a Pointer
```c
int *p; // Declaring a pointer to an integer
```

### b) Initializing a Pointer
```c
int num = 5;
int *p = &num; // Pointer 'p' stores address of 'num'
```

### c) Accessing Value Using Pointer
```c
#include <stdio.h>

int main() {
    int num = 10;
    int *ptr = &num;
    
    printf("Value of num: %d\n", num);
    printf("Address of num: %p\n", &num);
    printf("Pointer ptr stores: %p\n", ptr);
    printf("Value at ptr: %d\n", *ptr);
    return 0;
}
```
**Output:**
```
Value of num: 10
Address of num: 0x7ffeefbff5c4
Pointer ptr stores: 0x7ffeefbff5c4
Value at ptr: 10
```

## 3. Pointer Arithmetic
Pointers support arithmetic operations like increment, decrement, addition, and subtraction.

### Example:
```c
#include <stdio.h>

int main() {
    int arr[3] = {10, 20, 30};
    int *ptr = arr;
    
    printf("First element: %d\n", *ptr);
    ptr++;
    printf("Second element: %d\n", *ptr);
    ptr++;
    printf("Third element: %d\n", *ptr);
    return 0;
}
```
**Output:**
```
First element: 10
Second element: 20
Third element: 30
```

## 4. Pointer to Pointer
A pointer can store the address of another pointer.

### Example:
```c
#include <stdio.h>

int main() {
    int num = 42;
    int *ptr = &num;
    int **ptr2 = &ptr;
    
    printf("Value of num: %d\n", **ptr2);
    return 0;
}
```

## 5. Pointer and Arrays
Arrays and pointers are closely related.

### Example:
```c
#include <stdio.h>

int main() {
    int arr[3] = {1, 2, 3};
    int *ptr = arr;
    
    for (int i = 0; i < 3; i++) {
        printf("Element %d: %d\n", i, *(ptr + i));
    }
    return 0;
}
```

## 6. Dynamic Memory Allocation
Pointers enable dynamic memory allocation using `malloc()`, `calloc()`, and `free()`.

### Example:
```c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *ptr = (int*)malloc(3 * sizeof(int));
    
    if (!ptr) {
        printf("Memory allocation failed\n");
        return 1;
    }
    
    for (int i = 0; i < 3; i++) {
        ptr[i] = (i + 1) * 10;
    }
    
    for (int i = 0; i < 3; i++) {
        printf("%d ", ptr[i]);
    }
    
    free(ptr);
    return 0;
}
```
**Output:**
```
10 20 30
```

## 7. Function Pointers
A function pointer stores the address of a function and can be used to call functions dynamically.

### Example:
```c
#include <stdio.h>

void greet() {
    printf("Hello, World!\n");
}

int main() {
    void (*ptr)() = greet;
    ptr(); // Calling function using pointer
    return 0;
}
```

## 8. Conclusion
- **Pointers store memory addresses of variables.**
- **Pointer arithmetic allows efficient memory navigation.**
- **Function pointers enable dynamic function calls.**
- **Dynamic memory allocation is done using `malloc()`, `calloc()`, and `free()`.**

> 📚 This is part of the C chapter.
