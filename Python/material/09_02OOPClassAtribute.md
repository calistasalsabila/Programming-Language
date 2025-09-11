# Python: Class Attributes

##  Introduction

In Python, **class attributes** are attributes that belong to the class itself and **are shared across all instances** of the class. This differs from **instance attributes**, which are unique to each object.

##  Why Use Class Attributes?

- **Shared Data**: Useful for storing values that should be the same across all instances.
- **Memory Efficient**: Avoids redundant data duplication in each instance.
- **Consistency**: Ensures uniform values across objects.

## Basic Syntax

A **class attribute** is defined inside the class but outside any method.

```python
class Animal:
    species = "Mammal"  # Class attribute

    def __init__(self, name):
        self.name = name  # Instance attribute

# Creating objects
dog = Animal("Buddy")
cat = Animal("Whiskers")

print(dog.species)  # Output: Mammal
print(cat.species)  # Output: Mammal
```

## 🔹 Instance Attributes vs. Class Attributes

| Attribute Type         | Declared In                       | Shared Across Instances? |
| ---------------------- | --------------------------------- | ------------------------ |
| **Instance Attribute** | `__init__` using `self`           | No                     |
| **Class Attribute**    | Inside the class, outside methods | Yes                    |

##  Modifying Class Attributes

### 1. **Modifying via the Class** (Affects all instances)

```python
Animal.species = "Reptile"
print(dog.species)  # Output: Reptile
print(cat.species)  # Output: Reptile
```

### 2. **Modifying via an Instance** (Creates a new instance attribute, does NOT affect others)

```python
dog.species = "Bird"
print(dog.species)  # Output: Bird (Only changes for `dog`)
print(cat.species)  # Output: Reptile (Remains unchanged)
```

##  Example: Using Class Attributes

```python
class Counter:
    count = 0  # Class attribute

    def __init__(self):
        Counter.count += 1  # Increment count when a new instance is created

# Creating objects
c1 = Counter()
c2 = Counter()
c3 = Counter()

print(Counter.count)  # Output: 3 (Shared across instances)
```

## Why Use `self`?

In Python, **`self`**** refers to the instance being created or accessed**. It is important because:

1. **It differentiates between class attributes and instance attributes**.
2. **It allows each object to have a unique value for specific attributes**.
3. **It makes accessing attributes within methods easier**.

Example without `self`:

```python
class Person:
    name = "Default"

p1 = Person()
p1.name = "Dokja"
print(p1.name)  # Output: Dokja
print(Person.name)  # Output: Default
```

If we do not use `self` for the `name` attribute in `__init__`, all instances will share the same class attribute `name`.

With `self`:

```python
class Person:
    def __init__(self, name):
        self.name = name  # Instance attribute

p1 = Person("Dokja")
p2 = Person("Jega")

print(p1.name)  # Output: Dokja
print(p2.name)  # Output: Jega
```

Each instance has a unique `name` value because we define `self.name` as an instance attribute.

##  Practical Use Cases of Class Attributes

### 1. **Defining Default Values for All Instances**

```python
class Car:
    wheels = 4  # All cars generally have 4 wheels
    
    def __init__(self, brand, color):
        self.brand = brand
        self.color = color

car1 = Car("Toyota", "Red")
car2 = Car("Honda", "Blue")

print(car1.wheels)  # Output: 4
print(car2.wheels)  # Output: 4
```

### 2. **Counting the Number of Instances Created**

```python
class Student:
    total_students = 0  # Class attribute

    def __init__(self, name):
        self.name = name
        Student.total_students += 1

s1 = Student("Dokja")
s2 = Student("Jeha")
s3 = Student("Charlie")

print(Student.total_students)  # Output: 3
```

### 3. **Using Constants in a Class**

```python
class Physics:
    GRAVITY = 9.81  # Constant value for Earth's gravity

print(Physics.GRAVITY)  # Output: 9.81
```

## Summary

- **Class attributes** are shared across all instances.
- **Instance attributes** are unique to each object.
- **Using ****`self`**** ensures each instance has unique attribute values**.
- **Modifying a class attribute via the class affects all instances**.
- **Modifying it via an instance only affects that instance**.
- **Class attributes are useful for defaults, counters, and constants**.

> 📚 This is part of the Python chapter.


