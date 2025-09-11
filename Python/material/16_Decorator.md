# Python Decorator Complete Notes

## What is a Decorator?

A **decorator** in Python is a design pattern that allows you to modify the behavior of a function or class method **without changing its source code**. Decorators are often used for **logging**, **access control**, **memoization**, and more.

Think of a decorator like wrapping a gift  — you're not changing the gift itself, just enhancing it with wrapping paper.

---

## Goal

To understand how decorators work, how to define them, and how to use built-in or custom decorators to enhance function behavior.

---

## Syntax

```python
@decorator_name
def function_name():
    # function body
```

The line `@decorator_name` is **syntactic sugar** for:

```python
def function_name():
    # function body

function_name = decorator_name(function_name)
```

---

## Basic Example

### Code:

```python
def shout(func):
    def wrapper():
        print("Calling the function...")
        func()
        print("Function call ended.")
    return wrapper

@shout
def greet():
    print("Hello, Dokja!")

greet()
```

### Output:

```
Calling the function...
Hello, Dokja!
Function call ended.
```

---

## Decorators with Parameters

To handle functions with arguments:

```python
def shout(func):
    def wrapper(*args, **kwargs):
        print("Calling with arguments")
        return func(*args, **kwargs)
    return wrapper

@shout
def greet(name):
    print(f"Hello, {name}!")

greet("Hamin")
```

### Output:

```
Calling with arguments
Hello, Hamin!
```

---

## Why Use Decorators?

* **Code reusability**: Add features like logging, timing, or validation in a reusable way.
* **Cleaner syntax**: You don’t have to clutter the function body.
* **Separation of concerns**: Keep the function logic separate from added behavior.

---

## Built-in Decorators

* `@staticmethod`
* `@classmethod`
* `@property`
* `@functools.lru_cache`

Example using `@staticmethod`:

```python
class Jeha:
    @staticmethod
    def greet():
        print("Hi from Jeha!")

Jeha.greet()
```

---

## Custom Decorator with Arguments

To make a decorator that **accepts its own arguments**, use an extra layer:

```python
def repeat(n):
    def decorator(func):
        def wrapper(*args, **kwargs):
            for _ in range(n):
                func(*args, **kwargs)
        return wrapper
    return decorator

@repeat(3)
def laugh():
    print("Haha!")

laugh()
```

### Output:

```
Haha!
Haha!
Haha!
```

---

## Chaining Multiple Decorators

```python
def deco1(func):
    def wrapper():
        print("Start deco1")
        func()
        print("End deco1")
    return wrapper

def deco2(func):
    def wrapper():
        print("Start deco2")
        func()
        print("End deco2")
    return wrapper

@deco1
@deco2
def speak():
    print("Hi, Dazai!")

speak()
```

### Output:

```
Start deco1
Start deco2
Hi, Dazai!
End deco2
End deco1
```

---

## Summary

| Concept                       | Description                                  |
| ----------------------------- | -------------------------------------------- |
| `@decorator`                  | Syntactic sugar for `func = decorator(func)` |
| Decorator with arguments      | Use `*args, **kwargs` inside `wrapper()`     |
| Decorator with own parameters | Needs a 3-level nested function              |
| Chaining decorators           | Apply multiple decorators top-down           |

---

## Tips

* Use `functools.wraps(func)` to preserve metadata (like `__name__`, `__doc__`):

```python
from functools import wraps

def my_decorator(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        return func(*args, **kwargs)
    return wrapper
```

---

## 📚 Resources

* [Python Decorators - Real Python](https://realpython.com/primer-on-python-decorators/)
* [PEP 318 – Decorators](https://peps.python.org/pep-0318/)

---
> 📚 This is part of the Python chapter.

