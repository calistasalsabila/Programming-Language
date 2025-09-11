# Python Operators

Operators are symbols used to perform operations on variables and values in Python.

## 1. Arithmetic Operators
| Operator | Description | Example | Output |
|----------|------------|---------|--------|
| `+` | Addition | `5 + 3` | `8` |
| `-` | Subtraction | `5 - 3` | `2` |
| `*` | Multiplication | `5 * 3` | `15` |
| `/` | Division | `5 / 2` | `2.5` |
| `//` | Floor Division | `5 // 2` | `2` |
| `%` | Modulus | `5 % 2` | `1` |
| `**` | Exponentiation | `2 ** 3` | `8` |

### Example:
```python
x = 5
y = 2
print(x + y)  # 7
print(x - y)  # 3
print(x * y)  # 10
print(x / y)  # 2.5
print(x // y) # 2
print(x % y)  # 1
print(x ** y) # 25
```

## 2. Comparison Operators
| Operator | Description | Example | Output |
|----------|------------|---------|--------|
| `==` | Equal | `5 == 3` | `False` |
| `!=` | Not equal | `5 != 3` | `True` |
| `>` | Greater than | `5 > 3` | `True` |
| `<` | Less than | `5 < 3` | `False` |
| `>=` | Greater than or equal to | `5 >= 5` | `True` |
| `<=` | Less than or equal to | `5 <= 3` | `False` |

### Example:
```python
x = 10
y = 20
print(x == y)  # False
print(x != y)  # True
print(x > y)   # False
print(x < y)   # True
print(x >= 10) # True
print(y <= 10) # False
```

## 3. Logical Operators
| Operator | Description | Example | Output |
|----------|------------|---------|--------|
| `and` | Returns True if both statements are true | `True and False` | `False` |
| `or` | Returns True if one of the statements is true | `True or False` | `True` |
| `not` | Reverses the boolean value | `not True` | `False` |

### Example:
```python
a = True
b = False
print(a and b)  # False
print(a or b)   # True
print(not a)    # False
```

## 4. Bitwise Operators
| Operator | Description | Example | Output |
|----------|------------|---------|--------|
| `&` | AND | `5 & 3` | `1` |
| `|` | OR | `5 | 3` | `7` |
| `^` | XOR | `5 ^ 3` | `6` |
| `~` | NOT | `~5` | `-6` |
| `<<` | Left shift | `5 << 1` | `10` |
| `>>` | Right shift | `5 >> 1` | `2` |

### Example:
```python
x = 5
y = 3
print(x & y)  # 1
print(x | y)  # 7
print(x ^ y)  # 6
print(~x)     # -6
print(x << 1) # 10
print(x >> 1) # 2
```

## 5. Assignment Operators
| Operator | Description | Example |
|----------|------------|---------|
| `=` | Assign value | `x = 5` |
| `+=` | Add and assign | `x += 3` (same as `x = x + 3`) |
| `-=` | Subtract and assign | `x -= 3` |
| `*=` | Multiply and assign | `x *= 3` |
| `/=` | Divide and assign | `x /= 3` |
| `//=` | Floor divide and assign | `x //= 3` |
| `%=` | Modulus and assign | `x %= 3` |
| `**=` | Exponentiate and assign | `x **= 3` |

### Example:
```python
x = 10
x += 5  # x = 15
x -= 3  # x = 12
x *= 2  # x = 24
x /= 4  # x = 6.0
print(x)
```

## 6. Identity Operators
| Operator | Description | Example | Output |
|----------|------------|---------|--------|
| `is` | Returns True if both variables point to the same object | `a is b` | `True/False` |
| `is not` | Returns True if variables do not point to the same object | `a is not b` | `True/False` |

### Example:
```python
a = [1, 2, 3]
b = a
c = [1, 2, 3]
print(a is b)   # True
print(a is c)   # False
print(a is not c) # True
```

## 7. Membership Operators
| Operator | Description | Example | Output |
|----------|------------|---------|--------|
| `in` | Returns True if a value exists in the sequence | `'a' in 'apple'` | `True` |
| `not in` | Returns True if a value does not exist in the sequence | `'z' not in 'apple'` | `True` |

### Example:
```python
text = "hello world"
print("h" in text)  # True
print("z" not in text)  # True
```

## 8. Conclusion
- **Operators allow performing mathematical, logical, and comparison operations efficiently**
- **Python provides various operators to manipulate data easily**
- **Understanding operators is essential for writing efficient Python programs**

---
> 📚 This is part of the Python chapter.
