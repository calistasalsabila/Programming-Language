# Dart `noSuchMethod`

## Introduction

In Dart, every class inherits from the base class `Object`. One of the
methods provided by `Object` is `noSuchMethod`. This method is called
automatically whenever code attempts to use a method or property that
does not actually exist on an object.

Normally, if you try to call a method that is not defined in a class,
Dart will throw a runtime error. However, by overriding `noSuchMethod`,
you can customize what happens when such calls are made. This can be
useful for debugging, mocking in tests, or implementing dynamic
behavior.

## Syntax

``` dart
class MyClass {
  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}
```

-   `Invocation` is a special class in Dart that contains details about
    the attempted method call, such as:
    -   `invocation.memberName` → the symbol of the method name being
        called
    -   `invocation.positionalArguments` → the arguments passed
        positionally
    -   `invocation.namedArguments` → the named arguments passed in the
        call

## Example: Basic Usage

``` dart
class Person {
  @override
  dynamic noSuchMethod(Invocation invocation) {
    print('You tried to use: \${invocation.memberName}');
    print('With positional args: \${invocation.positionalArguments}');
    print('With named args: \${invocation.namedArguments}');
    return null;
  }
}

void main() {
  var p = Person();
  p.sayHello('Dokja'); // This method does not exist
}
```

### Output:

    You tried to use: Symbol("sayHello")
    With positional args: [Dokja]
    With named args: {}

## Example: Returning Custom Values

``` dart
class Calculator {
  @override
  dynamic noSuchMethod(Invocation invocation) {
    if (invocation.memberName == #add) {
      var a = invocation.positionalArguments[0];
      var b = invocation.positionalArguments[1];
      return a + b;
    }
    return super.noSuchMethod(invocation);
  }
}

void main() {
  var calc = Calculator();
  print(calc.add(3, 5)); // 8
}
```

## Use Cases

1.  **Debugging** → Detect when methods are mistakenly called.
2.  **Mocking in Tests** → Create mock classes without implementing all
    methods.
3.  **Dynamic Behavior** → Forward calls dynamically (similar to proxies
    in other languages).

## Important Notes

-   Overriding `noSuchMethod` is powerful, but should be used carefully.
-   If a class does not declare `implements` or `extends` with abstract
    members, `noSuchMethod` may not be triggered.
-   Avoid using it excessively in production code as it can make
    debugging harder.

## Conclusion

The `noSuchMethod` in Dart provides a mechanism for intercepting invalid
or missing method calls. It is especially helpful in testing and dynamic
programming scenarios. However, it is recommended to use it with caution
to maintain clean and predictable code.

---
> 📚 This is part of the Dart OOP chapter.
