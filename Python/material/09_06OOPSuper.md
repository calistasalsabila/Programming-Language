# Understanding `super()` in Python

## Objective
Learn how `super()` works in Python, its purpose, and how to use it effectively in object-oriented programming (OOP).

## Theory Explanation
In Python, the `super()` function is used to call methods from a parent class. It is especially useful when working with inheritance, allowing child classes to extend or override methods from their parent class while still being able to call the original implementation.

### Key Points:
- `super()` helps access the parent class methods and attributes.
- It is commonly used inside the `__init__()` constructor.
- It simplifies method resolution in **multiple inheritance** scenarios.
- Avoids explicit parent class references, making the code **more maintainable**.

## Code Examples and Output

### 1. Using `super()` in Single Inheritance
```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def introduce(self):
        return f"Hello, my name is {self.name} and I am {self.age} years old."

class Student(Person):
    def __init__(self, name, age, major):
        super().__init__(name, age)  # Calls the parent class constructor
        self.major = major
    
    def introduce(self):
        return f"{super().introduce()} I study {self.major}."

jeha = Student("Jeha", 20, "Computer Science")
print(jeha.introduce())
```
**Output:**
```
Hello, my name is Jeha and I am 20 years old. I study Computer Science.
```

### 2. `super()` in Multilevel Inheritance
```python
class Animal:
    def speak(self):
        return "Animals make sounds."

class Mammal(Animal):
    def speak(self):
        return f"Mammals make various sounds. {super().speak()}"

class Dog(Mammal):
    def speak(self):
        return f"Dogs bark. {super().speak()}"

dokja = Dog()
print(dokja.speak())
```
**Output:**
```
Dogs bark. Mammals make various sounds. Animals make sounds.
```

### 3. `super()` in Multiple Inheritance
```python
class Artist:
    def show_talent(self):
        return "I can draw."

class Musician:
    def show_talent(self):
        return "I can play music 🎵."

class MultiTalented(Artist, Musician):
    def show_talent(self):
        return f"{super().show_talent()} And I can also play music!"

dazai = MultiTalented()
print(dazai.show_talent())
```
**Output:**
```
I can draw. And I can also play music!
```

## Conclusion
- `super()` is used to call methods from the parent class in a **clean and efficient** way.
- It is **widely used** in **single, multilevel, and multiple inheritance**.
- Helps in maintaining a proper **method resolution order (MRO)** in Python.
- Improves code **reusability** and **scalability**.

Using `super()` correctly makes inheritance **powerful and manageable** in Python! 

> 📚 This is part of the Python chapter.


