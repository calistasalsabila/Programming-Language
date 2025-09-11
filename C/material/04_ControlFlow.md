# Control Flow in C

Control flow in C determines the order in which statements are executed. It includes decision-making structures, loops, and jump statements.

## 1. Decision Making Statements
C provides several conditional statements to control program execution based on conditions.

### a) `if` Statement
Executes a block of code if the condition is `true`.
```c
#include <stdio.h>

int main() {
    int num = 10;
    if (num > 0) {
        printf("Number is positive\n");
    }
    return 0;
}
```
**Output:**
```
Number is positive
```

### b) `if-else` Statement
Executes one block if the condition is `true`, otherwise executes another block.
```c
#include <stdio.h>

int main() {
    int num = -5;
    if (num > 0) {
        printf("Number is positive\n");
    } else {
        printf("Number is negative or zero\n");
    }
    return 0;
}
```
**Output:**
```
Number is negative or zero
```

### c) `if-else if-else` Statement
Allows multiple conditions.
```c
#include <stdio.h>

int main() {
    int num = 0;
    if (num > 0) {
        printf("Number is positive\n");
    } else if (num < 0) {
        printf("Number is negative\n");
    } else {
        printf("Number is zero\n");
    }
    return 0;
}
```
**Output:**
```
Number is zero
```

### d) `switch` Statement
Used to execute different blocks based on the value of a variable.
```c
#include <stdio.h>

int main() {
    int day = 3;
    switch(day) {
        case 1: printf("Monday\n"); break;
        case 2: printf("Tuesday\n"); break;
        case 3: printf("Wednesday\n"); break;
        default: printf("Invalid day\n");
    }
    return 0;
}
```
**Output:**
```
Wednesday
```

## 2. Looping Statements
Loops execute a block of code multiple times.

### a) `for` Loop
```c
#include <stdio.h>

int main() {
    for(int i = 1; i <= 5; i++) {
        printf("%d ", i);
    }
    return 0;
}
```
**Output:**
```
1 2 3 4 5
```

### b) `while` Loop
Executes as long as the condition is `true`.
```c
#include <stdio.h>

int main() {
    int i = 1;
    while(i <= 5) {
        printf("%d ", i);
        i++;
    }
    return 0;
}
```
**Output:**
```
1 2 3 4 5
```

### c) `do-while` Loop
Executes at least once before checking the condition.
```c
#include <stdio.h>

int main() {
    int i = 1;
    do {
        printf("%d ", i);
        i++;
    } while(i <= 5);
    return 0;
}
```
**Output:**
```
1 2 3 4 5
```

## 3. Jump Statements
Jump statements alter the normal flow of execution.

### a) `break` Statement
Terminates the loop immediately.
```c
#include <stdio.h>

int main() {
    for(int i = 1; i <= 5; i++) {
        if(i == 3) break;
        printf("%d ", i);
    }
    return 0;
}
```
**Output:**
```
1 2
```

### b) `continue` Statement
Skips the current iteration and moves to the next.
```c
#include <stdio.h>

int main() {
    for(int i = 1; i <= 5; i++) {
        if(i == 3) continue;
        printf("%d ", i);
    }
    return 0;
}
```
**Output:**
```
1 2 4 5
```

### c) `goto` Statement
Transfers control to a labeled statement.
```c
#include <stdio.h>

int main() {
    int num = 1;
    if(num) goto label;
    printf("This will not be printed\n");
label:
    printf("Jumped to label\n");
    return 0;
}
```
**Output:**
```
Jumped to label
```

## Conclusion
- `if`, `switch` are used for decision-making.
- `for`, `while`, `do-while` are used for loops.
- `break`, `continue`, `goto` alter control flow.
- Loops help in repetitive execution efficiently.

> 📚 This is part of the C chapter.
