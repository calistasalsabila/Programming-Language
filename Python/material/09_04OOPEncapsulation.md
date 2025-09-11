# Encapsulation in Python

## What is Encapsulation?
Encapsulation is one of the fundamental principles of Object-Oriented Programming (OOP). It refers to **hiding the internal details** of an object and only exposing necessary parts to the outside world. This helps in **data protection** and prevents accidental modification.

---

## Purpose of Encapsulation
 Protect data from accidental modification.
 Restrict direct access to object attributes.
 Improve maintainability and modularity.
 Implement getter & setter methods for controlled access.

---

## 🏗️ Implementing Encapsulation in Python
Python allows encapsulation using **private and protected attributes**.

### 🔹 Private Attributes (`__attribute`)
Private attributes are denoted with **double underscores (`__`)**. They cannot be accessed directly from outside the class.

```python
class Person:
    def __init__(self, name, age):
        self.name = name  # Public attribute
        self.__age = age  # Private attribute

    def get_age(self):
        return self.__age

    def set_age(self, new_age):
        if new_age > 0:
            self.__age = new_age
        else:
            print("Age must be positive!")

# Usage
jeha = Person("Jeha", 25)
print(jeha.name)       #  Allowed (public)
# print(jeha.__age)   #  Error! Cannot access private attribute
print(jeha.get_age())  #  Access via getter method
```

### 🔹 Protected Attributes (`_attribute`)
Protected attributes are denoted with **a single underscore (`_`)**. They can still be accessed but are considered a **convention** that they shouldn't be modified directly.

```python
class Student:
    def __init__(self, name, _grade):
        self.name = name
        self._grade = _grade  # Protected attribute

    def show_info(self):
        print(f"{self.name} has a grade of {self._grade}")

# Usage
dazai = Student("Dazai", "A")
print(dazai._grade)  # ⚠️ Allowed but discouraged
```

---

## Getter & Setter Methods
To safely access and modify private attributes, we use **getter and setter methods**.

```python
class BankAccount:
    def __init__(self, owner, balance):
        self.owner = owner
        self.__balance = balance  # Private attribute

    def get_balance(self):
        return self.__balance

    def set_balance(self, amount):
        if amount >= 0:
            self.__balance = amount
        else:
            print("Balance cannot be negative!")

# Usage
hamin = BankAccount("Hamin", 1000)
print(hamin.get_balance())  #  1000
hamin.set_balance(2000)
print(hamin.get_balance())  #  2000
```

---

## Bypass Private Attributes (Only for Educational Purposes!)
Python uses **name mangling** for private attributes (`__attribute` is internally renamed to `_ClassName__attribute`). Although this is **not recommended**, you can still access private attributes like this:

```python
class Secret:
    def __init__(self, code):
        self.__code = code  # Private attribute

# Usage
obj = Secret("TopSecret")
print(obj._Secret__code)  # 😈 Bypassing private attribute!
```

**Output:**
```
TopSecret
```

**Warning:** Bypassing private attributes defeats the purpose of encapsulation and should be avoided in real-world applications! Always use **getter & setter methods** for proper access. 🔒

---

## Conclusion
Encapsulation helps to **protect data**, **restrict direct access**, and **maintain code integrity**. By using **private and protected attributes**, along with **getter & setter methods**, we can **control how data is accessed and modified**.

🔹 **Use `_attribute` for protected members** (not strictly private, but should be handled with care).  
🔹 **Use `__attribute` for private members** to enforce data hiding.  
🔹 **Implement getters & setters** for safe access.  

> 📚 This is part of the Python chapter.

