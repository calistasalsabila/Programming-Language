# NumPy & NumPy Array 

Welcome to the world of **NumPy** (Numerical Python)! This library is the fundamental package for scientific computing in Python. It's super fast and designed for high-performance operations on arrays and matrices.

---

## What is NumPy?

NumPy is a powerful Python library used for numerical computing. It provides support for:

* Multi-dimensional arrays (ndarray)
* Fast mathematical operations over arrays
* Tools for integrating with C/C++ and Fortran code
* Linear algebra, Fourier transforms, and random number capabilities

**Import statement:**

```python
import numpy as np
```

---

## Why Use NumPy?

✨ Advantages over Python lists:

* Faster due to fixed data types and memory contiguity
* Requires less memory
* Vectorized operations (no need for loops!)
* Extensive mathematical functions

Example:

```python
import numpy as np
import time

size = 1_000_000

list1 = list(range(size))
list2 = list(range(size))

start = time.time()
result = [x + y for x, y in zip(list1, list2)]
print("List Time:", time.time() - start)

array1 = np.arange(size)
array2 = np.arange(size)

start = time.time()
result = array1 + array2
print("NumPy Time:", time.time() - start)
```

Output will show NumPy is much faster 

---

## NumPy Arrays

### Creating Arrays

```python
np.array([1, 2, 3])                  # 1D array
np.array([[1, 2], [3, 4]])          # 2D array
np.zeros((2, 3))                   # Array of zeros
np.ones((2, 2))                    # Array of ones
np.eye(3)                          # Identity matrix
np.full((2, 2), 7)                 # Constant value
np.arange(0, 10, 2)                # Range with step
np.linspace(0, 1, 5)               # Evenly spaced numbers
```

### Array Attributes

```python
arr = np.array([[1, 2, 3], [4, 5, 6]])

arr.shape       # (2, 3) -> rows, columns
arr.ndim        # 2 -> number of dimensions
arr.size        # 6 -> total number of elements
arr.dtype       # data type (e.g., int64)
```

### Reshaping & Flattening

```python
arr.reshape(3, 2)         # Change shape
arr.ravel()               # Flatten to 1D
arr.flatten()             # Also flattens (returns copy)
```

### Indexing & Slicing

```python
arr[0]                    # First row
arr[:, 1]                 # Second column
arr[1, 2]                 # Element at row 1, column 2
arr[0:2, 1:3]             # Subarray
```

### Random Arrays

```python
np.random.rand(2, 2)      # Uniform [0,1)
np.random.randn(3, 3)     # Standard normal
np.random.randint(0, 10, (2, 3))  # Random integers
```

---

## Mathematical Operations

```python
arr = np.array([1, 2, 3])

arr + 2         # [3 4 5]
arr * 3         # [3 6 9]
arr ** 2        # [1 4 9]
np.sqrt(arr)    # [1. 1.41 1.73]
np.sum(arr)     # 6
np.mean(arr)    # 2.0
np.std(arr)     # 0.816
```

---

## Array Concatenation & Splitting

### Concatenation

```python
np.concatenate([a, b])
np.vstack([a, b])   # Vertical stack
np.hstack([a, b])   # Horizontal stack
```

### Splitting

```python
np.split(arr, 3)
np.vsplit(arr2D, 2)
np.hsplit(arr2D, 2)
```

---

## Boolean Indexing & Filtering

```python
arr = np.array([10, 20, 30, 40])
mask = arr > 20
print(arr[mask])   # [30 40]

# or simply
print(arr[arr > 20])
```

---

## Real-World Example: Vectorized Distance Calculation

```python
points = np.array([[1, 2], [4, 6], [7, 1]])
origin = np.array([0, 0])

distances = np.sqrt(np.sum((points - origin) ** 2, axis=1))
print(distances)
```

---

## Resources to Learn More

* [NumPy Official Documentation](https://numpy.org/doc/)
* [NumPy Cheat Sheet (PDF)](https://github.com/numpy/numpy/blob/main/doc/Py3.10/numpy-user.pdf)
* [W3Schools NumPy Tutorial](https://www.w3schools.com/python/numpy/default.asp)
* [Python for Data Science Handbook by Jake VanderPlas](https://jakevdp.github.io/PythonDataScienceHandbook/)

---

## Summary

| Feature         | Description              |
| --------------- | ------------------------ |
| `np.array()`    | Create an array          |
| `arr.shape`     | Dimensions of array      |
| `arr.dtype`     | Type of data             |
| `np.arange()`   | Generate range           |
| `np.linspace()` | Even spacing             |
| `arr.reshape()` | Reshape array            |
| `np.sum(arr)`   | Sum of elements          |
| `arr[arr > x]`  | Boolean filtering        |
| `np.vstack()`   | Vertical stacking        |
| `np.hsplit()`   | Split array horizontally |

---
> 📚 This is part of the Python chapter.
