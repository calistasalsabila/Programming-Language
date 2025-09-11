# Understanding *args and **kwargs in Python 

## What are *args and **kwargs? 
In Python, `*args` and `**kwargs` allow us to pass a variable number of arguments to a function.
- `*args` allows you to pass multiple positional arguments as a tuple.
- `**kwargs` allows you to pass multiple keyword arguments as a dictionary.

## Purpose 
- `*args` is used when you want a function to accept any number of positional arguments.
- `**kwargs` is useful when you want a function to accept any number of keyword arguments.
- They make functions more flexible and reusable.

---

## Using *args 
### Syntax:
```python
# Function using *args
def greet(*names):
    for name in names:
        print(f"Hello, {name}!")

# Example usage
greet("Dokja", "Jeha", "Alice")
```

### Output:
```
Hello, Dokja!
Hello, Jeha!
Hello, Alice!
```

### Explanation 
- The function `greet` takes multiple names as arguments.
- `*names` collects all the passed arguments into a tuple.
- The function loops through the tuple and prints each name.

---

## Using **kwargs 
### Syntax:
```python
# Function using **kwargs
def person_info(**info):
    for key, value in info.items():
        print(f"{key}: {value}")

# Example usage
person_info(name="Dokja", age=25, city="Seoul")
```

### Output:
```
name: Dokja
age: 25
city: Seoul
```

### Explanation 
- The function `person_info` takes multiple keyword arguments.
- `**info` collects them into a dictionary.
- The function iterates over the dictionary and prints key-value pairs.

---

## Combining *args and **kwargs 
### Syntax:
```python
# Function using both *args and **kwargs
def introduce(*names, **details):
    for name in names:
        print(f"Hello, {name}!")
    for key, value in details.items():
        print(f"{key}: {value}")

# Example usage
introduce("Dokja", "Jeha", age=25, country="Korea")
```

### Output:
```
Hello, Dokja!
Hello, Jeha!
age: 25
country: Korea
```

### Explanation 
- `*args` collects positional arguments (names).
- `**kwargs` collects keyword arguments (details).
- The function handles both types of arguments dynamically.

---

## When to Use? 
 Use `*args` when the number of positional arguments is unknown.
 Use `**kwargs` when you need to handle multiple keyword arguments dynamically.
 Use both when a function requires maximum flexibility.

> 📚 This is part of the Python chapter.


