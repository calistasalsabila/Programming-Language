# Python Conditional Statements

Conditional statements allow a program to execute different code blocks based on certain conditions.

## 1. `if` Statement
The `if` statement executes a block of code only if a specified condition is **True**.

### Syntax:
```python
if condition:
    # Code to execute if condition is True
```

### Example:
```python
x = 10
if x > 5:
    print("x is greater than 5")
```
**Output:**
```
x is greater than 5
```

## 2. `if-else` Statement
The `if-else` statement executes one block of code if the condition is **True**, and another if the condition is **False**.

### Syntax:
```python
if condition:
    # Code to execute if condition is True
else:
    # Code to execute if condition is False
```

### Example:
```python
x = 3
if x > 5:
    print("x is greater than 5")
else:
    print("x is not greater than 5")
```
**Output:**
```
x is not greater than 5
```

## 3. `if-elif-else` Statement
The `if-elif-else` statement allows multiple conditions to be checked sequentially.

### Syntax:
```python
if condition1:
    # Code to execute if condition1 is True
elif condition2:
    # Code to execute if condition2 is True
else:
    # Code to execute if all conditions are False
```

### Example:
```python
x = 5
if x > 10:
    print("x is greater than 10")
elif x > 5:
    print("x is greater than 5")
else:
    print("x is 5 or less")
```
**Output:**
```
x is 5 or less
```

## 4. Nested `if` Statements
An `if` statement inside another `if` statement is called **nested if**.

### Syntax:
```python
if condition1:
    # Code to execute if condition1 is True
    if condition2:
        # Code to execute if condition2 is True
```

### Example:
```python
x = 15
if x > 10:
    print("Above 10")
    if x > 20:
        print("Also above 20")
    else:
        print("But not above 20")
```
**Output:**
```
Above 10
But not above 20
```

## 5. Short-Hand `if` Statement
If the `if` statement contains only one line, it can be written in a single line.

### Syntax:
```python
if condition: statement
```

### Example:
```python
x = 7
if x > 5: print("x is greater than 5")
```

## 6. Short-Hand `if-else` (Ternary Operator)
For simple conditions, the `if-else` statement can be written in one line.

### Syntax:
```python
variable = value_if_true if condition else value_if_false
```

### Example:
```python
x = 5
y = "Positive" if x > 0 else "Negative"
print(y)
```
**Output:**
```
Positive
```

## 7. Logical Operators in Conditions
Python allows using `and`, `or`, and `not` to combine multiple conditions.

### Syntax:
```python
if condition1 and condition2:
    # Code to execute if both conditions are True

if condition1 or condition2:
    # Code to execute if at least one condition is True

if not condition:
    # Code to execute if condition is False
```

### Example:
```python
x = 7
y = 10
if x > 5 and y > 5:
    print("Both x and y are greater than 5")
```
**Output:**
```
Both x and y are greater than 5
```

## 8. Conclusion
- **`if` statements control decision-making in Python.**
- **Use `elif` for multiple conditions and `else` for default cases.**
- **Short-hand and logical operators help write compact conditions.**
- **Nested `if` allows more complex decision structures.**

---
> 📚 This is part of the Python chapter.

