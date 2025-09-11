#  Python Objects & Data Structures

## 1. What is an Object?
In Python, everything is an **object**. An object is an instance of a class, which contains **attributes (variables)** and **methods (functions)**.

## 2. Python Data Types
Python has several built-in data types categorized as follows:

###  Basic Data Types
| Type  | Description | Example |
|-------|------------|---------|
| `int` | Integer numbers | `x = 10` |
| `float` | Decimal numbers | `y = 3.14` |
| `complex` | Complex numbers | `z = 2 + 3j` |
| `bool` | Boolean values | `is_active = True` |
| `str` | Text (string) | `name = "Calista"` |

###  Sequence Types
| Type | Description | Example |
|------|------------|---------|
| `list` | Ordered, mutable collection | `fruits = ["Apple", "Banana"]` |
| `tuple` | Ordered, immutable collection | `coords = (10, 20)` |
| `range` | Sequence of numbers | `numbers = range(5)` |

###  Set Types
| Type  | Description | Example |
|-------|------------|---------|
| `set` | Unordered collection of unique items | `unique_nums = {1, 2, 3}` |
| `frozenset` | Immutable set | `fset = frozenset([1, 2, 3])` |

###  Mapping Type
| Type | Description | Example |
|------|------------|---------|
| `dict` | Key-value pairs | `student = {"name": "Calista", "age": 20}` |

###  Binary Types
| Type | Description | Example |
|------|------------|---------|
| `bytes` | Immutable byte sequences | `b = b"hello"` |
| `bytearray` | Mutable byte sequences | `ba = bytearray(5)` |
| `memoryview` | View of a bytes object | `mv = memoryview(b"hello")` |

## 3. Class and Object Example
```python
# Creating a class with attributes and methods
class Student:
    # Constructor (special method for object initialization)
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    # Method to display student information
    def display_info(self):
        print("Name:", self.name)
        print("Age:", self.age)

# Creating an object of the Student class
student1 = Student("Dokja", 28)
student1.display_info()
```
**Output:**
```
Name: Dokja
Age: 28
```

## 4. Basic Structure of a Class
A class in Python typically consists of:
- **Attributes** → Variables that store data
- **Constructor (`__init__`)** → A special method for initializing objects
- **Methods** → Functions that define the object's behavior

## 5. Data Structures in Python
Python provides built-in data structures to store and manipulate data efficiently.

###  List
A **list** is an ordered, mutable collection of items.
```python
# Creating a list
fruits = ["Apple", "Orange", "Mango"]
print(fruits[0])  # Output: Apple

# Modifying a list
fruits.append("Banana")
print(fruits)  # Output: ['Apple', 'Orange', 'Mango', 'Banana']
```

###  Tuple
A **tuple** is an ordered, immutable collection of items.
```python
# Creating a tuple
data = (1, 2, 3)
print(data[1])  # Output: 2
```

###  Dictionary
A **dictionary** stores key-value pairs and allows fast lookups.
```python
# Creating a dictionary
student = {"name": "Calista", "age": 20, "major": "Informatics"}
print(student["name"])  # Output: Calista
```

###  Set
A **set** is an unordered collection of unique elements.
```python
# Creating a set
numbers = {1, 2, 3, 3, 4}
print(numbers)  # Output: {1, 2, 3, 4}
```

## 6. Class and Object Example with Methods
```python
class Car:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model
    
    def get_info(self):
        return f"Car: {self.brand} {self.model}"

# Creating an object
car1 = Car("Toyota", "Supra")
print(car1.get_info())  # Output: Car: Toyota Supra
```

## 7. Conclusion
- **Everything in Python is an object**
- **A class is a blueprint for objects**
- **Objects are created from a class using the `__init__` constructor**
- **Use built-in data structures like lists, tuples, dictionaries, and sets to store data efficiently**
- **Python provides a variety of data types for different use cases**

---

> 📚 This is part of the Python chapter.
