# Python Modules

---

## What is a Module in Python?

> A **module** in Python is a file containing Python definitions and statements. It helps you organize code into reusable components.

There are three main types of modules:
- **Built-in Modules**: Pre-installed with Python (e.g., `math`, `os`)
- **External Modules**: Require installation (e.g., `numpy`, `requests`)
- **User-defined Modules**: Custom modules you create yourself

---

## Why Use Modules?

Code Reusability  
Better Organization  
Avoid Code Duplication  
Easier Debugging & Maintenance

---

## How to Import Modules

### Basic Import
```python
import math
print(math.sqrt(25))  # Output: 5.0
```

### Import Specific Attributes
```python
from math import pi, sqrt
print(pi)       # Output: 3.141592653589793
print(sqrt(36)) # Output: 6.0
```

### Import with Alias
```python
import datetime as dt
print(dt.datetime.now())
```

---

## Built-in Modules

Python has many modules available out of the box:

| Module      | Description                            |
|-------------|----------------------------------------|
| `math`      | Mathematical operations                |
| `random`    | Random number generation               |
| `datetime`  | Date and time manipulation             |
| `os`        | Interact with the operating system     |
| `sys`       | Access system-specific parameters      |
| `json`      | Encode and decode JSON data            |
| `re`        | Regular expressions                    |
| `statistics`| Basic statistical operations           |
| `time`      | Time-related functions                 |

### Example: math
```python
import math
print(math.factorial(5))  # Output: 120
print(math.pow(2, 3))     # Output: 8.0
```

### Example: os
```python
import os
print(os.name)            # Output: 'posix' or 'nt'
print(os.getcwd())        # Current working directory
```

### Example: datetime
```python
import datetime
now = datetime.datetime.now()
print(now.strftime("%Y-%m-%d %H:%M:%S"))
```

---

## External Modules

External modules are not included by default. You must install them using `pip`.

### Install Example:
```bash
pip install numpy
```

### Usage Example:
```python
import numpy as np
array = np.array([1, 2, 3])
print(array * 2)  # Output: [2 4 6]
```

---

## Creating Your Own Module

Create a Python file named `my_module.py`:
```python
def greet(name):
    return f"Hello, {name}!"

def square(x):
    return x * x
```

Use it in another file:
```python
import my_module
print(my_module.greet("Dokja"))    # Output: Hello, Dokja!
print(my_module.square(4))         # Output: 16
```

Or use selective import:
```python
from my_module import greet
print(greet("Jeha"))  # Output: Hello, Jeha!
```

---

## Module Search Path

When you import a module, Python searches these locations:
1. Current directory
2. PYTHONPATH environment variable (if set)
3. Standard library directories

Check paths with:
```python
import sys
print(sys.path)
```

---

## Packages (Multi-file Modules)

> A **package** is a collection of modules in a directory containing `__init__.py` file.

Example Structure:
```
mypackage/
├── __init__.py
├── module1.py
└── module2.py
```

Use it like:
```python
from mypackage import module1
from mypackage.module2 import func_name
```

---

## Summary

| Concept       | Description                                   |
|---------------|-----------------------------------------------|
| Module        | File with reusable Python code                |
| Built-in      | Comes with Python (e.g., math, os)            |
| External      | Requires installation (e.g., numpy)           |
| Custom        | You define it using `.py` files               |
| Package       | Folder of modules with `__init__.py`          |

---

> 📚 This is part of the Python chapter.


