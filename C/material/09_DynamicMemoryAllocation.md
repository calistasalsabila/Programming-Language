# Dynamic Memory Allocation in C

## 1. Introduction
Dynamic memory allocation (DMA) allows us to allocate memory at **runtime** using pointers. This is useful when the exact memory size needed is **not known beforehand**.

### Functions for Dynamic Memory Allocation
C provides four standard functions from `<stdlib.h>` for dynamic memory management:

| Function | Description |
|----------|-------------|
| `malloc()` | Allocates a block of memory and returns a pointer to it (uninitialized). |
| `calloc()` | Allocates memory for an array and initializes it to zero. |
| `realloc()` | Resizes a previously allocated memory block. |
| `free()` | Releases allocated memory to avoid memory leaks. |

---

## 2. `malloc()` – Memory Allocation
### Syntax:
```c
ptr = (data_type*) malloc(size_in_bytes);
```

### Example:
```c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *ptr;
    ptr = (int*) malloc(5 * sizeof(int)); // Allocate memory for 5 integers
    
    if (ptr == NULL) {
        printf("Memory allocation failed!\n");
        return 1;
    }
    
    for (int i = 0; i < 5; i++) {
        ptr[i] = i * 10;
    }
    
    for (int i = 0; i < 5; i++) {
        printf("%d ", ptr[i]);
    }
    
    free(ptr); // Free allocated memory
    return 0;
}
```

**Output:**
```
0 10 20 30 40
```

---

## 3. `calloc()` – Contiguous Allocation
### Syntax:
```c
ptr = (data_type*) calloc(num_elements, size_of_each_element);
```

### Example:
```c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *ptr;
    ptr = (int*) calloc(5, sizeof(int)); // Allocate memory for 5 integers, initialized to 0
    
    if (ptr == NULL) {
        printf("Memory allocation failed!\n");
        return 1;
    }
    
    for (int i = 0; i < 5; i++) {
        printf("%d ", ptr[i]); // All values initialized to 0
    }
    
    free(ptr);
    return 0;
}
```

**Output:**
```
0 0 0 0 0
```

---

## 4. `realloc()` – Resize Memory
### Syntax:
```c
ptr = (data_type*) realloc(ptr, new_size_in_bytes);
```

### Example:
```c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *ptr;
    ptr = (int*) malloc(2 * sizeof(int)); // Allocate memory for 2 integers
    
    if (ptr == NULL) {
        printf("Memory allocation failed!\n");
        return 1;
    }
    
    ptr[0] = 10;
    ptr[1] = 20;
    
    ptr = (int*) realloc(ptr, 4 * sizeof(int)); // Resize to 4 integers
    
    ptr[2] = 30;
    ptr[3] = 40;
    
    for (int i = 0; i < 4; i++) {
        printf("%d ", ptr[i]);
    }
    
    free(ptr);
    return 0;
}
```

**Output:**
```
10 20 30 40
```

---

## 5. `free()` – Deallocate Memory
`free(ptr)` releases allocated memory back to the system.

### Example:
```c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *ptr = (int*) malloc(5 * sizeof(int));
    free(ptr); // Free allocated memory
    return 0;
}
```

---

## 6. Common Mistakes & Best Practices
Always check if memory allocation is successful (i.e., `ptr != NULL`).  
Use `free()` to avoid memory leaks.  
Avoid using uninitialized pointers.  
Be careful with `realloc()`, as it may return a new pointer.  
After freeing memory, set the pointer to `NULL` to avoid dangling pointers.

---

## 7. Conclusion
- **Dynamic memory allocation** is essential when handling variable-sized data.
- `malloc()`, `calloc()`, `realloc()`, and `free()` are key functions for memory management.
- Proper use of `free()` prevents memory leaks and ensures efficient memory usage.

> 📚 This is part of the C chapter.
