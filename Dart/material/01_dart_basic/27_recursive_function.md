## Dart - Recursive Function

### 1. What is Recursion?
Recursion is a programming technique where a function calls itself to solve a problem by breaking it down into smaller subproblems.

A recursive function has two main parts:
1. **Base Case**: Condition that stops the recursion.
2. **Recursive Case**: Function calls itself with a smaller or simpler input.

---

### 2. Why Use Recursion?
- To solve problems that can be broken down into similar subproblems (e.g. factorial, Fibonacci, tree traversal).
- Makes code more readable and elegant in some cases.

> Recursive functions must always have a base case to avoid infinite loops and stack overflow.

---

### 3. Syntax
```dart
returnType functionName(parameters) {
  if (baseCondition) {
    return baseResult;
  } else {
    return functionName(smallerProblem);
  }
}
```

---

### 4. Example: Factorial
Calculate `n! = n * (n - 1) * ... * 1`

```dart
int factorial(int n) {
  if (n <= 1) {
    return 1; // Base case
  } else {
    return n * factorial(n - 1); // Recursive case
  }
}

void main() {
  print(factorial(5)); // Output: 120
}
```

---

### 5. Example: Fibonacci
Generate `n-th` Fibonacci number: `F(n) = F(n - 1) + F(n - 2)` with base cases `F(0) = 0`, `F(1) = 1`

```dart
int fibonacci(int n) {
  if (n <= 0) return 0;
  if (n == 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  print(fibonacci(6)); // Output: 8
}
```

---

### 6. Tracing Example: factorial(3)
```
factorial(3)
=> 3 * factorial(2)
       => 2 * factorial(1)
              => 1 (base case)
=> 3 * 2 * 1 = 6
```

---

### 7. Pros and Cons
| Pros                         | Cons                          |
|------------------------------|-------------------------------|
| Simplifies code logic        | Can be less efficient         |
| Elegant for tree-based tasks | Risk of stack overflow        |
| Matches divide-and-conquer   | Harder to debug than loop     |

---

### 8. Use Case Checklist
- [x] Problem can be divided into subproblems of same nature
- [x] You can clearly define a base case
- [x] You ensure the problem size reduces in each call

---

### 9. Tips
- Prefer recursion when it matches the natural structure of the problem.
- For performance, use **memoization** or convert to **iteration** if needed.
- Use debugging or print statements to understand the recursive flow.

---

### 10. Summary
| Concept        | Meaning                              |
|----------------|---------------------------------------|
| Base Case      | Stops recursion                      |
| Recursive Case | Calls itself with smaller problem    |
| Stack Overflow | Happens if recursion never ends      |

---

### 11. Practice Ideas
- Reverse a string using recursion
- Sum of digits of a number recursively
- Binary search using recursion

---

> Recursion is like looking into a mirror that reflects another mirror. Make sure there's a wall (base case) to stop the reflection!

---

### 12. Related Topics
- Iteration vs Recursion
- Stack memory
- Tail recursion optimization
- Memoization

> 📚 This is part of the Dart basic chapter.

