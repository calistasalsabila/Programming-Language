# Operators in C

## 1. Arithmetic Operators
Arithmetic operators are used to perform mathematical calculations.

| Operator | Description | Example | Output |
|----------|-------------|---------|--------|
| `+` | Addition | `5 + 3` | `8` |
| `-` | Subtraction | `5 - 3` | `2` |
| `*` | Multiplication | `5 * 3` | `15` |
| `/` | Division | `10 / 2` | `5` |
| `%` | Modulus | `10 % 3` | `1` |

### Example:
```c
#include <stdio.h>

int main() {
    int a = 5, b = 3;
    printf("Addition: %d\n", a + b);
    printf("Subtraction: %d\n", a - b);
    printf("Multiplication: %d\n", a * b);
    printf("Division: %d\n", a / b);
    printf("Modulus: %d\n", a % b);
    return 0;
}
```

## 2. Relational Operators
Used to compare two values.

| Operator | Description | Example | Output |
|----------|-------------|---------|--------|
| `==` | Equal to | `5 == 3` | `0` (false) |
| `!=` | Not equal to | `5 != 3` | `1` (true) |
| `>` | Greater than | `5 > 3` | `1` (true) |
| `<` | Less than | `5 < 3` | `0` (false) |
| `>=` | Greater than or equal to | `5 >= 5` | `1` (true) |
| `<=` | Less than or equal to | `5 <= 3` | `0` (false) |

## 3. Logical Operators
Used for logical operations.

| Operator | Description | Example | Output |
|----------|-------------|---------|--------|
| `&&` | Logical AND | `(5 > 3) && (3 > 1)` | `1` (true) |
| `||` | Logical OR | `(5 > 3) || (3 < 1)` | `1` (true) |
| `!` | Logical NOT | `!(5 > 3)` | `0` (false) |

## 4. Bitwise Operators
Perform bit-level operations.

| Operator | Description | Example |
|----------|-------------|---------|
| `&` | Bitwise AND | `5 & 3` (Result: `1`) |
| `|` | Bitwise OR | `5 | 3` (Result: `7`) |
| `^` | Bitwise XOR | `5 ^ 3` (Result: `6`) |
| `~` | Bitwise Complement | `~5` (Result: `-6`) |
| `<<` | Left shift | `5 << 1` (Result: `10`) |
| `>>` | Right shift | `5 >> 1` (Result: `2`) |

## 5. Assignment Operators
Used to assign values to variables.

| Operator | Description | Example |
|----------|-------------|---------|
| `=` | Assign | `a = 10` |
| `+=` | Add and assign | `a += 5` (Equivalent to `a = a + 5`) |
| `-=` | Subtract and assign | `a -= 5` (Equivalent to `a = a - 5`) |
| `*=` | Multiply and assign | `a *= 5` (Equivalent to `a = a * 5`) |
| `/=` | Divide and assign | `a /= 5` (Equivalent to `a = a / 5`) |
| `%=` | Modulus and assign | `a %= 5` (Equivalent to `a = a % 5`) |

## 6. The Cast and Sizeof Operator

### Type Casting
Type casting allows you to convert one data type to another.

```c
#include <stdio.h>

int main() {
    double num = 10.5;
    int castedNum = (int) num;
    printf("Casted Number: %d\n", castedNum);
    return 0;
}
```

### `sizeof` Operator
Used to determine the size of a data type or variable.

```c
#include <stdio.h>

int main() {
    printf("Size of int: %lu bytes\n", sizeof(int));
    printf("Size of double: %lu bytes\n", sizeof(double));
    return 0;
}
```

## 7. Operator Precedence in C
Operator precedence determines the order in which operations are performed.

| Precedence | Operator | Description |
|------------|---------|-------------|
| 1 | `()` | Parentheses |
| 2 | `++`, `--` | Postfix Increment/Decrement |
| 3 | `*`, `/`, `%` | Multiplication, Division, Modulus |
| 4 | `+`, `-` | Addition, Subtraction |
| 5 | `<<`, `>>` | Bitwise Shift |
| 6 | `<`, `<=`, `>`, `>=` | Relational Operators |
| 7 | `==`, `!=` | Equality Operators |
| 8 | `&` | Bitwise AND |
| 9 | `^` | Bitwise XOR |
| 10 | `|` | Bitwise OR |
| 11 | `&&` | Logical AND |
| 12 | `||` | Logical OR |
| 13 | `=` `+=` `-=` `*=` `/=` `%=` | Assignment Operators |

### Example:
```c
#include <stdio.h>

int main() {
    int result = 5 + 2 * 3;
    printf("Result: %d\n", result); // Multiplication happens before addition
    return 0;
}
```

**Output:**
```
Result: 11
```

## Conclusion
- Operators in C are used for arithmetic, logical, bitwise, and assignment operations.
- The `sizeof` operator determines memory size, and type casting converts data types.
- Operator precedence determines the order of execution in expressions.

> 📚 This is part of the C chapter.
