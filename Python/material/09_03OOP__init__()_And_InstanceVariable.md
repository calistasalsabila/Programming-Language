# Constructor `__init__()` & Instance Variable

## Method Constructor `__init__()`
A constructor is a special method in a class that is automatically called when an object is created. In Python, the constructor method is named `__init__()`.

### Characteristics of a Constructor:
- A function inside a class that is automatically executed when an object is created.
- The constructor method in Python is `__init__()`.
- Used to initialize object attributes.

### Syntax Example:
```python
class ClassName:
    def __init__(self):
        # Code block that will be executed when an object is created
        pass
```

---

## Instance Variable
Instance variables are variables created inside the constructor (`__init__()`) and are unique to each object.

### 🔹 Characteristics of Instance Variables:
- Created inside the constructor using `self`.
- Each object has its own instance variable values.
- Can be accessed using `self.variable_name`.

### Code Example:
```python
class Hero:
    def __init__(self, name, power):
        self.name = name  # Instance variable
        self.power = power  # Instance variable

# Creating objects
dokja = Hero("Kim Dokja", "Plot Armor")
jeha = Hero("Yoo Joonghyuk", "Regression")

print(dokja.name)  # Output: Kim Dokja
print(jeha.name)   # Output: Yoo Joonghyuk
```

### Explanation:
1. `self.name` and `self.power` are **instance variables**.
2. Each object (`dokja` and `jeha`) has its own instance variable values.
3. The values of instance variables can be different for each object.

---

## Recap:
 `__init__()` is a constructor that is automatically called when an object is created.  
 `self` is used to reference the object itself.  
 **Instance variables** are attributes unique to each object.

---
> 📚 This is part of the Python chapter.


