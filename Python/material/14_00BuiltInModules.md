# Python Built-in Modules Overview

---

## What Are Built-in Modules?

> **Built-in modules** are standard libraries that come pre-installed with Python. They provide essential functionality for a wide range of programming tasks — from math operations to system interaction, file handling, data formatting, and more.

No need to install them manually. Just import and use!

```python
import math
print(math.sqrt(16))  # Output: 4.0
```

---

## Why Use Built-in Modules?

Save development time  
Well-tested and maintained  
Cover common programming needs  
Increase code readability and performance

---

## Common Built-in Modules with Example Use

| Module         | Purpose                                   | Example Usage                              |
|----------------|-------------------------------------------|---------------------------------------------|
| `math`         | Mathematical operations                   | `math.sqrt(25)`                             |
| `random`       | Generate random numbers                   | `random.randint(1, 10)`                     |
| `datetime`     | Work with dates and times                 | `datetime.datetime.now()`                  |
| `time`         | Time access and conversions               | `time.sleep(2)`                             |
| `calendar`     | Calendar-related functions                | `calendar.month(2025, 4)`                   |
| `os`           | Interact with the operating system        | `os.getcwd()`                               |
| `shutil`       | High-level file operations                | `shutil.copy('a.txt', 'b.txt')`             |
| `zipfile`      | Work with zip archives                    | `zipfile.ZipFile('file.zip', 'r')`          |
| `statistics`   | Basic statistical operations             | `statistics.mean([1, 2, 3])`                |
| `collections`  | Specialized data structures               | `collections.Counter(["a", "b", "a"])`     |
| `re`           | Regular expressions                       | `re.match(r"\d+", "123abc")`              |
| `itertools`    | Advanced iteration tools                  | `itertools.permutations([1, 2, 3])`         |
| `functools`    | Higher-order functions                    | `@functools.lru_cache()`                    |
| `operator`     | Functional equivalents of operators       | `operator.add(2, 3)`                        |
| `sys`          | System-specific parameters and functions  | `sys.argv`, `sys.exit()`                    |

---

## Summary

- Python's built-in modules provide solutions to common programming problems.
- You can access them simply with `import <module_name>`.
- Each module has its own set of functions, classes, and tools.

---

> 📚 This is part of the Python chapter.


