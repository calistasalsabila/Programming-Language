# Python `collections` Module 

The `collections` module in Python provides alternatives to the general-purpose built-in containers like `dict`, `list`, `set`, and `tuple`. It offers specialized container datatypes that can be more efficient and readable for certain tasks.

---

## Importing `collections`

```python
import collections
```

Or you can import specific classes:

```python
from collections import Counter, defaultdict, namedtuple, deque, OrderedDict, ChainMap
```

---

## 1. `Counter`
A dictionary subclass for counting hashable objects.

### Syntax:
```python
collections.Counter([iterable-or-mapping])
```

### Example:
```python
from collections import Counter

fruits = ["apple", "banana", "apple", "orange", "banana", "apple"]
count = Counter(fruits)
print(count)
```

### Output:
```
Counter({'apple': 3, 'banana': 2, 'orange': 1})
```

### Features:
- Supports addition, subtraction, intersection, and union of counters
- Useful for frequency analysis

---

## 2. `defaultdict`
Returns a default value if the key is not found.

### Syntax:
```python
defaultdict(default_factory)
```

### Example:
```python
from collections import defaultdict

dd = defaultdict(int)
dd["a"] += 1
print(dd["a"])
print(dd["b"])
```

### 🖨️ Output:
```
1
0
```

### Features:
- Avoids `KeyError`
- `list`, `int`, `str`, etc. are commonly used as factories

---

## 3. `namedtuple`
Creates tuple subclasses with named fields.

### Syntax:
```python
namedtuple("typename", ["field1", "field2", ...])
```

### Example:
```python
from collections import namedtuple

Point = namedtuple("Point", ["x", "y"])
p = Point(11, y=22)
print(p.x, p.y)
```

### Output:
```
11 22
```

### Features:
- Immutable like tuples
- More readable and self-documenting

---

## 4. `deque` (Double-Ended Queue)
List-like container with fast appends and pops from both ends.

### Syntax:
```python
deque(iterable, maxlen=0)
```

### Example:
```python
from collections import deque

d = deque([1, 2, 3])
d.appendleft(0)
d.append(4)
print(d)
d.pop()
d.popleft()
print(d)
```

### Output:
```
deque([0, 1, 2, 3, 4])
deque([1, 2, 3])
```

### Features:
- Thread-safe
- Can act as a queue or stack

---

## 5. `OrderedDict` (Python < 3.7)
Remembers the insertion order of keys.

### Syntax:
```python
OrderedDict([items])
```

### Example:
```python
from collections import OrderedDict

od = OrderedDict()
od["a"] = 1
od["b"] = 2
print(od)
```

### Output:
```
OrderedDict([('a', 1), ('b', 2)])
```

### Note:
- Since Python 3.7, `dict` maintains insertion order by default.

---

## 6. `ChainMap`
Combines multiple dictionaries (or mappings) into one.

### Syntax:
```python
ChainMap(dict1, dict2, ...)
```

### Example:
```python
from collections import ChainMap

a = {"a": 1, "b": 2}
b = {"b": 3, "c": 4}
c = ChainMap(a, b)
print(c["b"])  # From first dict only
```

### Output:
```
2
```

### Features:
- Useful for nested scopes or multiple context lookups

---

## Summary Table
| Class         | Description                            |
|---------------|----------------------------------------|
| `Counter`     | Counts hashable objects                |
| `defaultdict` | Dictionary with default values         |
| `namedtuple`  | Tuple with named fields                |
| `deque`       | Double-ended queue                     |
| `OrderedDict` | Ordered dictionary                     |
| `ChainMap`    | Combines multiple dictionaries         |

---

## 📚 References
- Python Docs: https://docs.python.org/3/library/collections.html
- Real Python: https://realpython.com/python-collections-module/

> 📚 This is part of the Python chapter.


