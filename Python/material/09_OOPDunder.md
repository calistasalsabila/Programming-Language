# Dunder Methods in Python 

## What are Dunder Methods?
Dunder methods (short for **Double UNDERscore methods**) are special methods in Python that have double underscores (`__`) at the beginning and end of their names. These methods allow you to define how objects of a class should behave in different situations, such as string representation, addition, length calculation, etc.

Dunder methods are also called **magic methods** because they enable powerful object-oriented programming features!

---

## Common Dunder Methods

### 1. `__init__`: Constructor Method
Defines how an object is initialized.

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

# Example usage
dokja = Person("Dokja", 25)
print(dokja.name)  # Output: Dokja
```

### 2. `__str__`: String Representation 
Defines the string representation of an object when `str()` is called.

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def __str__(self):
        return f"{self.name} is {self.age} years old."

# Example usage
dazai = Person("Dazai", 22)
print(str(dazai))  # Output: Dazai is 22 years old.
```

### 3. `__repr__`: Official String Representation 
Defines how an object should be represented (useful for debugging and logging).

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def __repr__(self):
        return f"Person(name='{self.name}', age={self.age})"

# Example usage
jeha = Person("Jeha", 30)
print(repr(jeha))  # Output: Person(name='Jeha', age=30)
```

### 4. `__len__`: Object Length 
Defines how `len()` behaves for an object.

```python
class Group:
    def __init__(self, members):
        self.members = members
    
    def __len__(self):
        return len(self.members)

# Example usage
team = Group(["Dokja", "Jeha", "Hamin"])
print(len(team))  # Output: 3
```

### 5. `__add__`: Operator Overloading ➕
Defines behavior for the `+` operator.

```python
class Number:
    def __init__(self, value):
        self.value = value
    
    def __add__(self, other):
        return Number(self.value + other.value)

# Example usage
num1 = Number(5)
num2 = Number(10)
result = num1 + num2
print(result.value)  # Output: 15
```

### 6. `__eq__`: Equality Comparison ⚖️
Defines behavior for `==` comparison.

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def __eq__(self, other):
        return self.name == other.name and self.age == other.age

# Example usage
dokja1 = Person("Dokja", 25)
dokja2 = Person("Dokja", 25)
print(dokja1 == dokja2)  # Output: True
```

---

## Why Use Dunder Methods?
Make objects behave like built-in data types.  
Improve code readability and maintainability.  
Enable operator overloading and custom behaviors.  
Enhance debugging with meaningful representations.  

---

## Summary 📝
| Dunder Method  | Purpose |
|--------------|---------|
| `__init__`  | Constructor (initialize objects) |
| `__str__`  | String representation (user-friendly) |
| `__repr__`  | Debugging string representation |
| `__len__`  | Define length with `len()` |
| `__add__`  | Overload `+` operator |
| `__eq__`  | Define `==` comparison |

With dunder methods, you can make your Python classes more intuitive and powerful!

---
> 📚 This is part of the Python chapter.
