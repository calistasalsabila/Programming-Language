# Global Variables, Scope, Enclosed Scope, and `global` Keyword in Python

## 🔹 1. What is a Global Variable?
A **global variable** is a variable declared outside of any function or block, making it accessible from anywhere in the program.

### Example:
```python
x = 10  # Global variable

def print_x():
    print(x)  # Accessible inside the function

print_x()  # Output: 10
```

⚠ **Note:** If you want to modify a global variable inside a function, use the `global` keyword.

---

## 🔹 2. Understanding Scope in Python
Scope defines where a variable can be accessed. Python has four types of scope:

1. **Local Scope** → A variable declared inside a function; accessible only within that function.
2. **Enclosing Scope** → A variable from an outer function in a nested function.
3. **Global Scope** → A variable declared outside any function.
4. **Built-in Scope** → Predefined functions and variables in Python (e.g., `print()`, `len()`, etc.).

### Example of Local Scope:
```python
def my_function():
    y = 5  # Local variable
    print(y)

my_function()
# print(y)  # ERROR! y is not accessible outside the function
```

---

## 🔹 3. Enclosed Scope (Nonlocal Variables in Nested Functions)
If a function is **inside another function**, the variable from the outer function is called an **Enclosed Variable** (between Local and Global scope).

### Example:
```python
def outer():
    a = 10  # Enclosed Variable

    def inner():
        print(a)  # Accessible from the inner function
    
    inner()

outer()  # Output: 10
```

If you want to modify `a` inside `inner()`, use the `nonlocal` keyword:

```python
def outer():
    a = 10

    def inner():
        nonlocal a
        a = 20  # Modifies the variable in the outer function
    
    inner()
    print(a)

outer()  # Output: 20
```

---

## 🔹 4. The `global` Keyword (Modifying Global Variables Inside a Function)
To modify a **global variable** inside a function, use the `global` keyword.

### Without `global` (Incorrect):
```python
x = 10

def change_x():
    x = 20  # Creates a new local variable, doesn't modify the global one

change_x()
print(x)  # Output: 10 (Unchanged)
```

### With `global` (Correct):
```python
x = 10

def change_x():
    global x  # Accesses the global variable
    x = 20

change_x()
print(x)  # Output: 20 (Changed)
```

⚠ **Be Careful with `global`!**
Using `global` too often can make your code hard to understand and lead to unexpected errors. It's usually better to return a value from the function instead.

---

## 🔹 5. Summary 
| Concept  | Description |
|----------|-------------|
| **Global Variable** | A variable declared outside any function, accessible anywhere |
| **Local Variable** | A variable declared inside a function, accessible only within that function |
| **Enclosing Scope** | A variable inside an outer function, accessible by inner functions |
| **Built-in Scope** | Predefined functions and variables in Python like `print()`, `len()`, etc. |
| **Keyword `global`** | Used to modify a global variable inside a function |

> 📚 This is part of the Python chapter.

