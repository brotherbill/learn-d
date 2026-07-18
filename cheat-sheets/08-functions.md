# Cheat Sheet — 08 Functions

Functions are named blocks of code that perform a specific task.  
They make programs easier to understand, easier to maintain, and easier to reason about.

This cheat sheet summarizes everything a beginner needs to use functions correctly.

---

## Function Basics

### Declaring a function
```
int add (int a, int b)
{
    return a + b;
}
```

### Calling a function
```
int result = add (3, 4);
```

### Spacing rule
Always write:
```
name (arguments)
```
Never:
```
name(arguments)
```

This improves readability and reduces beginner confusion.

---

## Function Parts

A function has:

- **name** — what the function is called  
- **parameters** — input values  
- **return type** — the type of the result  
- **body** — the code that runs  

Example:
```
int square (int x)
{
    return x * x;
}
```

---

## Void Functions

Functions that do not return a value use `void`.

```
void greet ()
{
    writeln ("Hello!");
}
```

Call it:
```
greet ();
```

---

## Parameters

Parameters are **copies**, not references.

```
void printTwice (string message)
{
    writeln (message);
    writeln (message);
}
```

Call it:
```
printTwice ("D is fun!");
```

---

## Returning Values

Use `return` to send a value back.

```
int triple (int x)
{
    return x * 3;
}
```

---

## Contracts (Correctness)

Functions are the natural place to enforce correctness.

```
int divide (int a, int b)
{
    assert (b != 0, "b must not be zero");
    return a / b;
}
```

Contracts make behavior explicit and predictable.

---

## Functions and Loops

Functions work naturally with loops.

```
int triple (int x)
{
    return x * 3;
}

void main ()
{
    int[] numbers = [1, 2, 3];

    int i = 0;
    while (i < numbers.length)
    {
        writeln (triple (numbers[i]));
        i = i + 1;
    }
}
```

---

## Safe Beginner Mistakes (All Compile)

### Ignoring a return value
```
int add (int a, int b)
{
    return a + b;
}

void main ()
{
    add (3, 4);   // result ignored
}
```

### Parameters are copies
```
void increment (int x)
{
    x = x + 1;   // only changes local x
}

void main ()
{
    int a = 10;
    increment (a);
    writeln (a);   // prints 10
}
```

### Return stops execution
```
int demo ()
{
    writeln ("Before return");
    return 5;
    writeln ("After return");   // never runs
}
```

---

## Things to Avoid (Correctness‑First)

Avoid constructs that do more than you expect:

- delegates  
- closures  
- lambdas  
- default parameters  
- implicit behavior  
- async/await (other languages)  
- operators that expand into hidden behavior (`=>`)  

Use **simple functions** that behave exactly as written.

---

## Summary

- Functions isolate behavior.  
- Functions take parameters and may return values.  
- Use a space before `(` in function calls and declarations.  
- Keep functions simple and predictable.  
- Use contracts for correctness.  
- All examples compile cleanly.  

Functions are the foundation of structured programming in D.
