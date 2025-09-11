# Anonymous Class in Java

## What is an Anonymous Class?

An **anonymous class** in Java is a local class **without a name**. It is used to make your code **more concise and readable**, especially when you need to create a one-time-use class, typically for overriding methods of interfaces or abstract classes.

It's declared and instantiated **in one expression**.

---

## Why Use Anonymous Class?

* To create a **quick implementation** of an interface or abstract class.
* To avoid writing **extra lines of code** for one-time-use classes.
* To keep code **organized and readable** for small behaviors (especially with GUI or event handling).

---

## Syntax of Anonymous Class

```java
InterfaceOrClassName obj = new InterfaceOrClassName() {
    // override methods here
};
```

### Explanation:

| Syntax Part              | Meaning                                                            |
| ------------------------ | ------------------------------------------------------------------ |
| `InterfaceOrClassName()` | Constructor of the interface/abstract class to implement or extend |
| `{ ... }`                | Body of the anonymous class with method implementations            |
| `obj`                    | Reference variable to access the anonymous class                   |

> 💡 You **cannot** define a constructor in an anonymous class because it doesn't have a name.

---

## Example: Implementing Interface using Anonymous Class

```java
interface Greeting {
    void sayHello();
}

public class Main {
    public static void main(String[] args) {
        Greeting dokja = new Greeting() {
            @Override
            public void sayHello() {
                System.out.println("Hello, I'm Dokja ");
            }
        };

        dokja.sayHello();
    }
}
```

### 🧾 Output:

```
Hello, I'm Dokja 
```

---

## Example: Extending Abstract Class using Anonymous Class

```java
abstract class Hero {
    abstract void useSkill();
}

public class Main {
    public static void main(String[] args) {
        Hero jeha = new Hero() {
            @Override
            void useSkill() {
                System.out.println("Jeha uses Shadow Dash");
            }
        };

        jeha.useSkill();
    }
}
```

### Output:

```
Jeha uses Shadow Dash 
```

---

## Anonymous Class with Method Parameters

You can even pass an anonymous class as a method argument!

```java
interface Farewell {
    void sayBye();
}

public class Main {
    public static void sayGoodbye(Farewell f) {
        f.sayBye();
    }

    public static void main(String[] args) {
        sayGoodbye(new Farewell() {
            @Override
            public void sayBye() {
                System.out.println("Goodbye from Hamin");
            }
        });
    }
}
```

### Output:

```
Goodbye from Hamin
```

---

## Anonymous Class vs Lambda Expression

| Feature               | Anonymous Class                         | Lambda Expression             |
| --------------------- | --------------------------------------- | ----------------------------- |
| Applicable to         | Interfaces and abstract classes         | Functional interfaces only    |
| Can have constructor? | No                                      |  No                          |
| Syntax                | Verbose                                 | Concise                       |
| Readability           | Sometimes less readable for short logic | More readable for short logic |

---

## Notes:

* Anonymous class can **access final or effectively final variables** from the enclosing scope.
* Use it wisely — don't overuse for large logic blocks. It's meant for **lightweight and quick implementations**.

---

## Summary

Anonymous classes are useful when:

* You need a quick implementation of an interface or abstract class
* You don’t want to create a full class file for it

They help make Java code **shorter and clearer**, especially in UI handling, event-driven systems, or simple callbacks.

---

> 📚 This is part of the Java OOP chapter.

