## Python Generator

### Definition
A **generator** in Python is a **function that yields values one at a time** using the `yield` keyword instead of `return`. Generators allow us to create iterators in a more memory-efficient way since they do not store the entire data in memory.

### Purpose
- Save memory when working with large datasets
- Generate values on demand (lazy evaluation)
- Create iterators with simpler syntax

---

### `return` vs `yield`
| `return` | `yield` |
|---------|--------|
| Terminates the function and returns a value | Saves the function state and continues execution when called again |
| Returns a single value | Can yield multiple values (iteration) |
| Not suitable for looping | Ideal for looping |

---

### Basic Generator Example
```python
def my_generator():
    yield "Hello Dokja"
    yield "Hello Jeha"
    yield "Hello Hamin"

gen = my_generator()

for value in gen:
    print(value)
```

### Output
```
Hello Dokja
Hello Jeha
Hello Hamin
```

---

### Generator with Loop Example
```python
def count_up_to(n):
    count = 1
    while count <= n:
        yield count
        count += 1

for number in count_up_to(3):
    print(f"Hi Dazai, this is number {number}")
```

### Output
```
Hi Dazai, this is number 1
Hi Dazai, this is number 2
Hi Dazai, this is number 3
```

---

### Generator Expression
Similar to list comprehension, but uses parentheses `()` instead of brackets.

```python
squares = (x*x for x in range(5))
for s in squares:
    print(s)
```

### 💡 Output
```
0
1
4
9
16
```

---

### When to Use Generators?
Use generators when:
- The data is too large to load into memory at once
- You only need one element at a time
- You want better performance and efficiency for large iterations

---

###  Extra Tips
- Generators are **single-use**: once the iteration is finished, they must be recreated to reuse.
- You can use the `next()` function to manually fetch the next value.

```python
g = (x for x in range(3))
print(next(g))  # 0
print(next(g))  # 1
print(next(g))  # 2
# print(next(g))  # Raises StopIteration
```

---

### Conclusion
Generators are a powerful Python feature that make processing large data easier and more efficient. By using `yield`, you can produce data one item at a time without overloading your computer's memory. 

> 📚 This is part of the Python chapter.


