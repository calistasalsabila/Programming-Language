# Python Modules: `math`, `statistics`, and `random`

Explore three powerful standard library modules for numeric operations, data analysis, and randomness in Python. Perfect for solving real-world problems, data science, simulations, and algorithm experiments! 📊🎲

---

## `math` Module

### Purpose:

Provides access to mathematical functions like square root, trigonometry, logarithms, constants, and more.

### Common Functions & Constants:

| Function/Constant   | Description                                   |
| ------------------- | --------------------------------------------- |
| `math.sqrt(x)`      | Returns the square root of `x`                |
| `math.pow(x, y)`    | Returns `x` raised to the power of `y`        |
| `math.exp(x)`       | Returns `e**x`                                |
| `math.log(x, base)` | Logarithm of `x` to given base (default: `e`) |
| `math.floor(x)`     | Rounds `x` down to nearest integer            |
| `math.ceil(x)`      | Rounds `x` up to nearest integer              |
| `math.pi`           | Constant for π (3.14159...)                   |
| `math.e`            | Constant for e (2.71828...)                   |
| `math.sin(x)`       | Returns sine of x (radians)                   |
| `math.cos(x)`       | Returns cosine of x (radians)                 |
| `math.radians(deg)` | Converts degrees to radians                   |
| `math.degrees(rad)` | Converts radians to degrees                   |

### Code Example:

```python
import math

x = 9
print("Square Root:", math.sqrt(x))
print("Power:", math.pow(2, 3))
print("PI:", math.pi)
print("Sin(90 degrees):", math.sin(math.radians(90)))
```

### 📎 Explanation:

* `math.sqrt()` and `math.pow()` are basic math utilities.
* `math.sin()`, `math.cos()` require angle in radians.
* Constants like `pi` and `e` are useful in scientific computations.

---

## `statistics` Module

### Purpose:

Provides functions to perform statistical operations on numeric data.

### Common Functions:

| Function                    | Description                              |
| --------------------------- | ---------------------------------------- |
| `statistics.mean(data)`     | Returns the mean (average)               |
| `statistics.median(data)`   | Returns the median                       |
| `statistics.mode(data)`     | Returns the most common data point       |
| `statistics.stdev(data)`    | Returns standard deviation               |
| `statistics.variance(data)` | Returns variance                         |
| `statistics.median_low()`   | Median when two middle values—lower one  |
| `statistics.median_high()`  | Median when two middle values—higher one |

### Code Example:

```python
import statistics

data = [2, 4, 4, 4, 5, 5, 7, 9]

print("Mean:", statistics.mean(data))
print("Median:", statistics.median(data))
print("Mode:", statistics.mode(data))
print("Standard Deviation:", statistics.stdev(data))
```

### Explanation:

* `mean()`, `median()`, `mode()` are basic statistical measures.
* `stdev()` and `variance()` are useful for measuring data spread.

---

## `random` Module

### Purpose:

Used for generating random numbers, shuffling data, making selections, or simulating probabilities.

### Common Functions:

| Function                   | Description                           |
| -------------------------- | ------------------------------------- |
| `random.random()`          | Float between 0 and 1                 |
| `random.randint(a, b)`     | Integer between `a` and `b` inclusive |
| `random.uniform(a, b)`     | Float between `a` and `b`             |
| `random.choice(seq)`       | Randomly selects from a sequence      |
| `random.choices(seq, k=n)` | Returns list of `n` random elements   |
| `random.shuffle(seq)`      | Shuffles the sequence in-place        |
| `random.seed(x)`           | Sets seed for reproducible results    |

### Code Example:

```python
import random

random.seed(42)  # ensures same results each run
print("Random float:", random.random())
print("Random int (1-10):", random.randint(1, 10))
print("Random choice:", random.choice(["Dokja", "Jeha", "Dazai"]))

numbers = [1, 2, 3, 4, 5]
random.shuffle(numbers)
print("Shuffled:", numbers)
```

### Explanation:

* `random.seed()` ensures consistent random results for testing.
* `random.shuffle()` modifies list order.
* Useful in games, simulations, and randomized algorithms.

---

## Mini Case Study: Roll Dice Simulation

```python
import random

def roll_dice():
    return random.randint(1, 6)

results = [roll_dice() for _ in range(1000)]

# Analyzing the result
import statistics
print("Mean Roll:", statistics.mean(results))
print("Most Frequent Roll:", statistics.mode(results))
```

---

## Conclusion

With `math`, `statistics`, and `random`, you can build anything from a basic calculator to data-driven simulations and probability games. These modules form the foundation for numeric computation in Python! 

> 📚 This is part of the Python chapter.

