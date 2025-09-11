# Java Methods

## 🔹 What is a Method?
A method in Java is a block of code that performs a specific task. It helps in code reusability and modular programming. Methods are defined within a class and can be invoked when needed.

## 🔹 Syntax of a Method
```java
returnType methodName(parameters) {
    // method body
    return value; // (if returnType is not void)
}
```

## 🔹 Types of Methods
### 1. **Predefined Methods**
Java provides built-in methods that can be used directly. Example:
```java
public class Example {
    public static void main(String[] args) {
        String text = "Hello, World!";
        System.out.println(text.length()); // Calling a predefined method
    }
}
```

### 2. **User-defined Methods**
These are custom methods created by the programmer.
```java
public class Example {
    public static void greet() {
        System.out.println("Hello, Java!");
    }
    
    public static void main(String[] args) {
        greet(); // Calling the method
    }
}
```

## 🔹 Method Parameters and Arguments
Methods can take inputs called parameters.
```java
public class Example {
    public static void greet(String name) {
        System.out.println("Hello, " + name + "!");
    }
    
    public static void main(String[] args) {
        greet("Alice"); // Passing argument
    }
}
```

## 🔹 Return Type of a Method
A method can return a value using the `return` keyword.
```java
public class Example {
    public static int square(int num) {
        return num * num;
    }
    
    public static void main(String[] args) {
        int result = square(5);
        System.out.println("Square: " + result);
    }
}
```

## 🔹 Method Overloading
Method overloading allows multiple methods with the same name but different parameters.
```java
public class Example {
    public static int add(int a, int b) {
        return a + b;
    }
    
    public static double add(double a, double b) {
        return a + b;
    }
    
    public static void main(String[] args) {
        System.out.println(add(5, 10)); // Calls int method
        System.out.println(add(5.5, 2.5)); // Calls double method
    }
}
```

## 🔹 Method Recursion
A method can call itself (recursion) to solve problems like factorial computation.
```java
public class Example {
    public static int factorial(int n) {
        if (n == 0) return 1;
        return n * factorial(n - 1);
    }
    
    public static void main(String[] args) {
        System.out.println("Factorial: " + factorial(5));
    }
}
```

## 🔹 Conclusion
- Methods make code reusable and organized. 
- They can take parameters and return values. 
- Overloading and recursion enhance method capabilities. 

> 📚 This is part of the Java OOP chapter.


