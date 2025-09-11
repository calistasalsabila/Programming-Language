# Python Loops

Loops in Python are used to execute a block of code multiple times.

## 1. `for` Loop
The `for` loop iterates over a sequence (list, tuple, string, etc.).

### Syntax:
```python
for variable in sequence:
    # Code to execute
```

### Example:
```python
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
```
**Output:**
```
apple
banana
cherry
```

## 2. `for` Loop with `range()`
The `range()` function generates a sequence of numbers.

### Syntax:
```python
for variable in range(start, stop, step):
    # Code to execute
```

### Example:
```python
for i in range(5):
    print(i)
```
**Output:**
```
0
1
2
3
4
```

### Using `range(start, stop, step)`
```python
for i in range(2, 10, 2):
    print(i)
```
**Output:**
```
2
4
6
8
```

## 3. `enumerate()` in Loops
The `enumerate()` function adds an index counter to an iterable.

### Syntax:
```python
for index, value in enumerate(iterable, start=0):
    # Code to execute
```

### Example:
```python
fruits = ["apple", "banana", "cherry"]
for index, fruit in enumerate(fruits):
    print(f"{index}: {fruit}")
```
**Output:**
```
0: apple
1: banana
2: cherry
```

## 4. `zip()` in Loops
The `zip()` function combines multiple iterables into tuples.

### Syntax:
```python
for item1, item2 in zip(iterable1, iterable2):
    # Code to execute
```

### Example:
```python
names = ["Alice", "Bob", "Charlie"]
ages = [25, 30, 35]

for name, age in zip(names, ages):
    print(f"{name} is {age} years old")
```
**Output:**
```
Alice is 25 years old
Bob is 30 years old
Charlie is 35 years old
```

## 5. `while` Loop
The `while` loop executes as long as a condition is **True**.

### Syntax:
```python
while condition:
    # Code to execute
```

### Example:
```python
x = 0
while x < 5:
    print(x)
    x += 1
```
**Output:**
```
0
1
2
3
4
```

## 6. `break` Statement
The `break` statement stops the loop before it completes all iterations.

### Syntax:
```python
for variable in sequence:
    if condition:
        break
```

### Example:
```python
for i in range(10):
    if i == 5:
        break
    print(i)
```
**Output:**
```
0
1
2
3
4
```

## 7. `continue` Statement
The `continue` statement skips the current iteration and moves to the next one.

### Syntax:
```python
for variable in sequence:
    if condition:
        continue
```

### Example:
```python
for i in range(5):
    if i == 2:
        continue
    print(i)
```
**Output:**
```
0
1
3
4
```

## 8. `else` in Loops
The `else` block runs after the loop finishes **unless** it is stopped by `break`.

### Syntax:
```python
for variable in sequence:
    # Code to execute
else:
    # Code executed if loop completes fully
```

### Example:
```python
for i in range(3):
    print(i)
else:
    print("Loop finished")
```
**Output:**
```
0
1
2
Loop finished
```

## 9. Nested Loops
A loop inside another loop is called a **nested loop**.

### Syntax:
```python
for variable1 in sequence1:
    for variable2 in sequence2:
        # Code to execute
```

### Example:
```python
for i in range(3):
    for j in range(2):
        print(f"i={i}, j={j}")
```
**Output:**
```
i=0, j=0
i=0, j=1
i=1, j=0
i=1, j=1
i=2, j=0
i=2, j=1
```

## 10. `pass` Statement
The `pass` statement is a placeholder for future code.

### Syntax:
```python
for variable in sequence:
    if condition:
        pass  # Placeholder for future logic
```

### Example:
```python
for i in range(5):
    if i == 2:
        pass  # Placeholder for future logic
    print(i)
```

## 11. Conclusion
- **Use `for` loops to iterate over sequences.**
- **Use `while` loops when the number of iterations is unknown.**
- **Use `break` to exit a loop early and `continue` to skip an iteration.**
- **The `else` block runs only if the loop completes fully.**
- **Use `range()` to generate sequences, `enumerate()` to add indices, and `zip()` to combine iterables.**

---
> 📚 This is part of the Python chapter.


