# Time Complexity in Python

Understanding time complexity helps us analyze the performance of our code as the input size grows. It provides a way to evaluate how fast or slow an algorithm is, regardless of machine specifications.

---

## What is Time Complexity?

Time complexity refers to **how the runtime of an algorithm grows** with respect to the input size `n`. It's commonly represented using Big-O notation:

* `O(1)` - Constant time
* `O(log n)` - Logarithmic time
* `O(n)` - Linear time
* `O(n log n)` - Linearithmic time
* `O(n^2)` - Quadratic time
* `O(2^n)` - Exponential time
* `O(n!)` - Factorial time

---

## Time Complexity of Common Python Operations

### Lists

| Operation               | Time Complexity | Example             |
| ----------------------- | --------------- | ------------------- |
| Indexing `a[i]`         | `O(1)`          | `a = [1,2,3]; a[0]` |
| Append `a.append(x)`    | `O(1)`          | `a.append(4)`       |
| Insert `a.insert(i, x)` | `O(n)`          | `a.insert(1, 10)`   |
| Delete `del a[i]`       | `O(n)`          | `del a[2]`          |
| Pop (end) `a.pop()`     | `O(1)`          | `a.pop()`           |
| Pop (i) `a.pop(i)`      | `O(n)`          | `a.pop(1)`          |
| Contains `x in a`       | `O(n)`          | `3 in a`            |
| Sort `a.sort()`         | `O(n log n)`    | `a.sort()`          |

### Dictionaries

| Operation         | Time Complexity | Example                |
| ----------------- | --------------- | ---------------------- |
| Get `d[k]`        | `O(1)`          | `d = {'a': 1}; d['a']` |
| Set `d[k] = v`    | `O(1)`          | `d['b'] = 2`           |
| Delete `del d[k]` | `O(1)`          | `del d['a']`           |
| Contains `k in d` | `O(1)`          | `'a' in d`             |
| Iteration         | `O(n)`          | `for k in d:`          |

### Sets

| Operation            | Time Complexity | Example       |
| -------------------- | --------------- | ------------- |
| Add `s.add(x)`       | `O(1)`          | `s.add(5)`    |
| Remove `s.remove(x)` | `O(1)`          | `s.remove(5)` |
| Contains `x in s`    | `O(1)`          | `3 in s`      |
| Iteration            | `O(n)`          | `for x in s:` |

---

## Examples with Explanation

### Example 1: Constant Time `O(1)`

```python
nums = [1, 2, 3, 4]
print(nums[2])  # Accessing index is constant time
```

### Example 2: Linear Time `O(n)`

```python
for num in nums:
    print(num)  # Visiting each element once
```

### Example 3: Quadratic Time `O(n^2)`

```python
for i in nums:
    for j in nums:
        print(i, j)  # Nested loop
```

---

## Tips to Optimize

* Use dictionaries and sets for fast lookups.
* Avoid nested loops when possible.
* Use built-in Python functions like `sort()` which are highly optimized.
* Profile your code with `time` or `cProfile` to find bottlenecks.

---

## 📚 Resources

* [Big-O Cheat Sheet](https://www.bigocheatsheet.com/)
* Python docs: [Time Complexity](https://wiki.python.org/moin/TimeComplexity)

---
> 📚 This is part of the Python chapter.

