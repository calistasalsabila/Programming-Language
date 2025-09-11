# Super Constructor in Dart

## 1. What is a Super Constructor?
In Dart, the `super` keyword is used to refer to the superclass (or parent class) of the current class. A **super constructor** is a way to invoke a constructor of the superclass from a subclass. This is particularly useful when you want to initialize the superclass’s fields or execute logic defined in its constructor before executing the subclass’s logic.

## 2. Syntax
```dart
class SuperClass {
  SuperClass(String name) {
    print('SuperClass constructor called with name: \$name');
  }
}

class SubClass extends SuperClass {
  SubClass(String name) : super(name) {
    print('SubClass constructor called');
  }
}
```

## 3. How It Works
- The `super(name)` in the `SubClass` constructor explicitly calls the constructor of `SuperClass`.
- This call **must be the first statement** in the subclass constructor initializer list.

## 4. When to Use
Use a super constructor when:
- The superclass has required parameters.
- You want to ensure certain initialization happens in the parent class.
- You are working with inheritance hierarchies that pass data down to parent classes.

## 5. Example with Required Field
```dart
class Animal {
  final String species;

  Animal(this.species) {
    print('Animal created: \$species');
  }
}

class Dog extends Animal {
  final String breed;

  Dog(this.breed) : super('Dog') {
    print('Breed: \$breed');
  }
}

void main() {
  Dog myDog = Dog('Golden Retriever');
}
```
### Output:
```
Animal created: Dog
Breed: Golden Retriever
```

## 6. Multiple Constructors in Superclass
If a superclass has more than one constructor, you can call a specific one:
```dart
class Person {
  Person.named(String name) {
    print('Named constructor: \$name');
  }
}

class Student extends Person {
  Student(String name) : super.named(name);
}
```

## 7. Super Constructor with Optional Parameters
```dart
class Vehicle {
  Vehicle([String? model]) {
    print('Vehicle model: \$model');
  }
}

class Car extends Vehicle {
  Car([String? model]) : super(model);
}

void main() {
  Car();
  Car('Sedan');
}
```
### Output:
```
Vehicle model: null
Vehicle model: Sedan
```

## 8. Rules to Remember
- The `super` call **must appear before** any other initializer in the subclass constructor.
- If the superclass does not have a default constructor and only has named or parameterized constructors, you **must** call one explicitly.
- If you don’t use `super()`, Dart will try to implicitly call the default constructor of the superclass.

## 9. Summary
| Feature                    | Description                                                   |
|---------------------------|---------------------------------------------------------------|
| Keyword                   | `super`                                                       |
| Purpose                   | Call a constructor from the parent class                      |
| Placement                 | Must be in the initializer list, before body of constructor   |
| Supports Named Constructor| Yes                                                           |
| Optional Parameters       | Yes                                                           |

## 10. Conclusion
The `super` constructor is an essential tool when working with inheritance in Dart. It allows subclasses to properly initialize data and behavior from their superclasses, ensuring a clean and organized class hierarchy.

---
> 📚 This is part of the Dart OOP chapter.
