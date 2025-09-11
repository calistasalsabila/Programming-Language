# Arrays in C

## 1. Introduction to Arrays
An **array** in C is a collection of elements of the same data type stored in contiguous memory locations. Arrays allow efficient data manipulation and indexing.

### Syntax:
```c
<data_type> array_name[array_size];
```

### Example:
```c
int numbers[5] = {1, 2, 3, 4, 5};
```

## 2. Declaring and Initializing Arrays

### a) Declaring an Array
```c
int arr[10]; // Declares an integer array of size 10
```

### b) Initializing an Array
```c
int arr[] = {10, 20, 30, 40}; // Size inferred automatically
```

### c) Accessing Array Elements
```c
#include <stdio.h>

int main() {
    int numbers[3] = {10, 20, 30};
    printf("First element: %d\n", numbers[0]);
    printf("Second element: %d\n", numbers[1]);
    return 0;
}
```
**Output:**
```
First element: 10
Second element: 20
```

## 3. Multi-Dimensional Arrays
C supports multi-dimensional arrays such as 2D and 3D arrays.

### a) 2D Arrays (Matrix)
```c
int matrix[2][3] = {
    {1, 2, 3},
    {4, 5, 6}
};
```

### b) Accessing 2D Arrays
```c
#include <stdio.h>

int main() {
    int matrix[2][2] = {{1, 2}, {3, 4}};
    printf("Element at [0][1]: %d\n", matrix[0][1]);
    return 0;
}
```
**Output:**
```
Element at [0][1]: 2
```

## 4. Variable Length Arrays (VLA)
A **Variable Length Array (VLA)** allows array sizes to be determined at runtime.

### Syntax:
```c
<data_type> array_name[variable_size];
```

### Example:
```c
#include <stdio.h>

int main() {
    int n;
    printf("Enter array size: ");
    scanf("%d", &n);
    int arr[n]; // VLA
    for (int i = 0; i < n; i++) {
        arr[i] = i * 10;
    }
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
```
**Example Input:**
```
Enter array size: 5
```
**Output:**
```
0 10 20 30 40
```

## 5. Conclusion
- **Arrays store multiple values in a single variable.**
- **They can be one-dimensional or multi-dimensional.**
- **Variable Length Arrays (VLA) allow runtime-determined sizes.**
- **Efficient indexing makes arrays useful for data manipulation.**

> 📚 This is part of the C chapter.
