# Structures in C

## 1. Introduction to Structures
A **structure** (`struct`) in C is a user-defined data type that allows grouping variables of different types under one name. It helps organize complex data efficiently.

### Syntax:
```c
struct StructureName {
    data_type member1;
    data_type member2;
    ...
};
```

### Example:
```c
struct Student {
    char name[50];
    int age;
    float gpa;
};
```

## 2. Declaring and Initializing Structures
### a) Declaring Structure Variables
To use a structure, you must declare a variable of that structure type:
```c
struct Student student1;
```

### b) Initializing a Structure
You can initialize a structure variable at the time of declaration:
```c
struct Student student1 = {"Hamin Lee", 20, 3.75};
```

### c) Accessing Structure Members
To access the members of a structure, use the dot (`.`) operator.

```c
#include <stdio.h>
struct Student {
    char name[50];
    int age;
    float gpa;
};

int main() {
    struct Student s1 = {"Hamin Lee", 20, 3.75};
    printf("Name: %s\n", s1.name);
    printf("Age: %d\n", s1.age);
    printf("GPA: %.2f\n", s1.gpa);
    return 0;
}
```
**Output:**
```
Name: Hamin Lee
Age: 20
GPA: 3.75
```

## 3. Array of Structures
An **array of structures** allows storing multiple records of the same structure type.
```c
struct Student students[2] = {
    {"Hamin Lee", 20, 3.75},
    {"Jaemin Lee", 21, 3.60}
};
```

## 4. Nested Structures
A **nested structure** is a structure within another structure.
```c
struct Date {
    int day, month, year;
};

struct Student {
    char name[50];
    struct Date dob;
};
```

## 5. Accessing Members in Nested Structures
To access members of a nested structure, use the dot (`.`) operator multiple times.
```c
struct Student s1 = {"Hamin Lee", {15, 8, 2003}};
printf("Name: %s\n", s1.name);
printf("DOB: %d-%d-%d\n", s1.dob.day, s1.dob.month, s1.dob.year);
```
**Output:**
```
Name: Hamin Lee
DOB: 15-8-2003
```

## 6. Pointer to Structures
A **pointer to a structure** allows indirect access to structure members using the arrow (`->`) operator.
```c
struct Student s = {"Hamin Lee", 20, 3.75};
struct Student *ptr = &s;
printf("Name: %s\n", ptr->name);
```

## 7. Structure as Function Argument
Structures can be passed to functions as arguments.
```c
void display(struct Student s) {
    printf("Name: %s\n", s.name);
}
```

## 8. Pointer to Structure as Function Argument
A pointer to a structure can be passed to a function to modify the structure directly.
```c
void update(struct Student *s) {
    s->age = 21;
}
```

## 9. Returning a Structure from a Function
A function can return a structure.
```c
struct Student getStudent() {
    struct Student s = {"Hamin Lee", 20, 3.75};
    return s;
}
```

## 10. Dynamic Memory Allocation for Structures
```c
#include <stdio.h>
#include <stdlib.h>
struct Student {
    char name[50];
    int age;
    float gpa;
};

int main() {
    struct Student *s = (struct Student *)malloc(sizeof(struct Student));
    s->age = 20;
    s->gpa = 3.75;
    printf("Age: %d, GPA: %.2f\n", s->age, s->gpa);
    free(s);
    return 0;
}
```

## 11. Conclusion
- **Structures allow grouping of different data types.**
- **Can be accessed using dot (`.`) and arrow (`->`) operators.**
- **Supports nesting, function arguments, and dynamic allocation.**

> 📚 This is part of the C chapter.
