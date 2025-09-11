# Python: Class & Object

##  Introduction
In Python, **class** and **object** are fundamental concepts of Object-Oriented Programming (OOP). A class is like a blueprint, while an object is an instance of a class. OOP allows us to structure our code efficiently and reuse it easily.

##  Why Use Classes & Objects?
- **Encapsulation**: Bundle data and functions together.
- **Reusability**: Create objects from a common template.
- **Scalability**: Manage large codebases more effectively.

## Syntax
A **class** is defined using the `class` keyword, and an **object** is created by instantiating a class.

```python
# Defining a class
class Animal:
    def __init__(self, name, sound):
        self.name = name  # Attribute
        self.sound = sound  # Attribute

    def make_sound(self):
        return f"{self.name} says {self.sound}!"

# Creating an object
cat = Animal("Kitty", "Meow")
print(cat.make_sound())  # Output: Kitty says Meow!
```

##  Key Concepts
### 🔹 `__init__` Method
The `__init__` method is a **constructor** that initializes object attributes when an object is created.

```python
class Car:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

my_car = Car("Toyota", "Supra")
print(my_car.brand)  # Output: Toyota
```

### 🔹 Attributes & Methods
- **Attributes**: Variables that store object data.
- **Methods**: Functions inside a class that define object behavior.

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def introduce(self):
        return f"Hi, I'm {self.name} and I'm {self.age} years old."

p1 = Person("Alice", 25)
print(p1.introduce())  # Output: Hi, I'm Alice and I'm 25 years old.
```

### 🔹 `self` Keyword
- `self` represents the **current instance** of the class.
- It is used to access attributes and methods within a class.

### 🔹 Creating Multiple Objects
```python
p1 = Person("Bob", 30)
p2 = Person("Charlie", 40)

print(p1.introduce())  # Output: Hi, I'm Bob and I'm 30 years old.
print(p2.introduce())  # Output: Hi, I'm Charlie and I'm 40 years old.
```

## Summary
- **Classes** define the blueprint.
- **Objects** are instances of a class.
- **Methods** define behaviors of objects.
- **Attributes** store object data.


> 📚 This is part of the Python chapter.



