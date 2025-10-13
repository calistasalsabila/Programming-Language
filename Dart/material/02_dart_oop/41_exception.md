# Dart Exceptions

This document provides a comprehensive explanation of exceptions in Dart, including what exceptions are, how to use them, how to create custom exceptions, how to work with stack traces, and best practices for handling errors.

## Overview of Exceptions in Dart

Exceptions are runtime errors that occur when the normal execution of a program is disrupted by an unexpected event. Instead of crashing, Dart allows you to handle these exceptions gracefully. Common scenarios include invalid user input, network failures, or file I/O errors.

Key points:

* **Exceptions vs Errors**: In Dart, exceptions represent conditions that can be caught and handled. Errors represent serious problems that typically should not be caught (such as `StackOverflowError`).
* Exceptions are objects, typically instances of classes that implement the `Exception` interface or extend `Error`.

## Throwing Exceptions

You can signal an exceptional condition using the `throw` keyword.

```dart
void checkValue(int value) {
  if (value < 0) {
    throw Exception('Value cannot be negative.');
  }
}
```

You can throw any object, but using `Exception` or subclasses is recommended for clarity.

## Catching Exceptions

To handle exceptions, use a `try` block with `catch` or `on` clauses.

### Basic try-catch

```dart
void main() {
  try {
    checkValue(-5);
  } catch (e) {
    print('Caught an exception: $e');
  }
}
```

### Using on-catch for Specific Exception Types

```dart
void main() {
  try {
    throw FormatException('Invalid format');
  } on FormatException catch (e) {
    print('Format exception: ${e.message}');
  } catch (e) {
    print('Other exception: $e');
  }
}
```

* `on` specifies the type of exception to catch.
* `catch` captures the exception object and optionally the stack trace.

### Catching Stack Traces

A stack trace provides a detailed report of the active stack frames at the point where the exception was thrown. It is extremely useful for debugging.

```dart
try {
  int.parse('abc');
} catch (e, stackTrace) {
  print('Exception: $e');
  print('Stack trace: $stackTrace');
}
```

* The second parameter of `catch` is a `StackTrace` object.
* `StackTrace` shows the sequence of function calls leading to the error.
* You can log or save the stack trace for diagnostic purposes.

## Finally Clause

The `finally` block runs whether or not an exception is thrown, making it useful for cleanup operations such as closing files or releasing resources.

```dart
void main() {
  try {
    checkValue(-1);
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Cleanup complete.');
  }
}
```

## Custom Exceptions

You can define your own exceptions by implementing the `Exception` interface or creating a class that extends `Exception`.

```dart
class NegativeValueException implements Exception {
  final String message;
  NegativeValueException(this.message);

  @override
  String toString() => 'NegativeValueException: $message';
}

void checkPositive(int value) {
  if (value < 0) {
    throw NegativeValueException('Value $value is negative.');
  }
}

void main() {
  try {
    checkPositive(-10);
  } catch (e, stackTrace) {
    print(e);
    print('Stack trace: $stackTrace');
  }
}
```

## Common Built-in Exceptions

Dart provides several built-in exceptions, such as:

* `FormatException`: Thrown when a string or data has an invalid format.
* `IOException`: Thrown for file system or input/output errors.
* `TimeoutException`: Thrown when an operation exceeds a time limit.
* `StateError`: Indicates that an object is in an invalid state.
* `ArgumentError`: Raised when an invalid argument is passed to a function.

## Working with StackTrace in Depth

The `StackTrace` class represents the call stack at the point where the exception occurred. It is automatically captured when you catch an exception with `catch (e, stackTrace)`.

### Printing the Stack Trace

```dart
try {
  int.parse('notANumber');
} catch (e, s) {
  print('Error: $e');
  print('Stack trace:\n$s');
}
```

### Converting Stack Trace to String

The `toString()` method of `StackTrace` returns a formatted string suitable for logging.

### Obtaining the Current Stack Trace Without an Exception

You can capture the current call stack even if no exception is thrown:

```dart
void logCurrentStack() {
  StackTrace current = StackTrace.current;
  print('Current stack trace:\n$current');
}
```

This is useful for debugging complex logic flows or tracing program execution.

## Rethrowing Exceptions

You can rethrow an exception after performing some action, preserving the original stack trace:

```dart
void process() {
  try {
    int.parse('abc');
  } catch (e, stackTrace) {
    print('Logging error: $e');
    print('Original stack trace: $stackTrace');
    rethrow; // Rethrow the same exception
  }
}
```

## Best Practices

* **Be Specific**: Catch specific exceptions whenever possible to avoid hiding bugs.
* **Use Stack Traces for Debugging**: Always log stack traces to understand the context of errors.
* **Avoid Silent Failures**: Handle exceptions in a way that informs the user or logs the issue.
* **Clean Up Resources**: Use `finally` to release resources regardless of success or failure.
* **Custom Exceptions**: Create custom exceptions to provide clear and descriptive error information.
* **Avoid Overuse**: Do not use exceptions for regular control flow.

## Summary

Dart exceptions provide a structured way to handle runtime errors, allowing developers to create robust and reliable applications. By using `try`, `catch`, `on`, `finally`, stack traces, and custom exception classes, you can anticipate and respond to unexpected conditions gracefully. Stack traces give invaluable insight into the path of execution leading to the error, making them an essential tool for debugging and maintaining Dart applications.

> 📚 This is part of the Dart OOP chapter.
