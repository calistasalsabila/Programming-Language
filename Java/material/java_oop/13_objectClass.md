# Object & Class in Java 

## 1. Introduction 
In Java, **Object** and **Class** are the core concepts of Object-Oriented Programming (OOP). 
- **Class** is a blueprint for creating objects.
- **Object** is an instance of a class.

---

## 2. Defining a Class 
A class in Java is defined using the `class` keyword. It can contain **fields (variables)** and **methods**.

### 🔹 Syntax:
```java
class ClassName {
    // Fields (variables)
    DataType variableName;
    
    // Methods
    ReturnType methodName() {
        // Method body
    }
}
```

### 🔹 Example:
```java
class Person {
    String name;
    int age;
    
    void introduce() {
        System.out.println("Hello, my name is " + name + " and I am " + age + " years old.");
    }
}
```

---

## 3. Creating an Object 
To create an object, we use the `new` keyword.

### 🔹 Syntax:
```java
ClassName objectName = new ClassName();
```

### 🔹 Example:
```java
public class Main {
    public static void main(String[] args) {
        Person dokja = new Person();
        dokja.name = "Dokja";
        dokja.age = 25;
        dokja.introduce();
    }
}
```

### 🔹 Output:
```
Hello, my name is Dokja and I am 25 years old.
```

---

## 4. Constructors 
A **constructor** is a special method used to initialize objects. It has the same name as the class and does not return a value.

### 🔹 Example:
```java
class Person {
    String name;
    int age;
    
    // Constructor
    Person(String personName, int personAge) {
        name = personName;
        age = personAge;
    }
    
    void introduce() {
        System.out.println("Hello, my name is " + name + " and I am " + age + " years old.");
    }
}

public class Main {
    public static void main(String[] args) {
        Person jeha = new Person("Jeha", 22);
        jeha.introduce();
    }
}
```

### 🔹 Output:
```
Hello, my name is Jeha and I am 22 years old.
```

---

## 5. Summary 
| Concept | Description |
|---------|-------------|
| **Class** | Blueprint/template for objects |
| **Object** | Instance of a class |
| **Constructor** | Special method to initialize objects |
| **Method** | Function inside a class |

---

## 6. Next Steps 
- Learn about **Encapsulation, Inheritance, and Polymorphism**
- Practice with **real-world object-oriented examples**
- Explore **static vs instance methods and variables**

> 📚 This is part of the Java OOP chapter.
