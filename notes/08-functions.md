# 08 — Functions

This lesson introduces **functions**, the most important building block in D programming.

A function is a **named block of code** that performs a specific task.  
Functions let you organize logic, avoid repetition, and reason about behavior in small, predictable units.

Functions are the foundation of correctness‑first programming.

---

## 1. What is a function?

A function is:

- a name  
- a list of parameters  
- a block of code  
- a return type  

A function:

- receives input  
- performs work  
- returns a result (unless it is `void`)  

Functions allow you to break a program into **small, understandable pieces**.

---

## 2. Why functions matter

Functions:

- reduce duplication  
- isolate behavior  
- make code easier to test  
- make code easier to reason about  
- make code easier to maintain  
- make code easier for juniors to understand  

---

## 3. Declaring a function

Basic syntax:

```
int add (int a, int b)
{
    return a + b;
}
```

This means:

- `add` is the function name  
- it takes two `int` parameters  
- it returns an `int`  
- it returns the sum of `a` and `b`  

Example:
```
// exercises/01-lessons/08-functions/03-01-add-basic/app.d
int add (int a, int b)
{
    return a + b;
}

void main ()
{
    writeln (add (3, 4));   // prints 7
}
```

---

## 4. Calling a function

To call a function, use its name and pass arguments:

```
add (10, 20);
```

Example:
```
// exercises/01-lessons/08-functions/04-01-call-basic/app.d
int add (int a, int b)
{
    return a + b;
}

void main ()
{
    int result = add (10, 20);
    writeln (result);   // prints 30
}
```

---

## 5. Functions with no return value (`void`)

Some functions perform actions but do not return a value.

Example:
```
// exercises/01-lessons/08-functions/05-01-void-basic/app.d
void greet ()
{
    writeln ("Hello!");
}

void main ()
{
    greet ();   // prints Hello!
}
```

`void` means “no return value.”

---

## 6. Functions with parameters

Parameters allow functions to receive input.

Example:
```
// exercises/01-lessons/08-functions/06-01-parameters-basic/app.d
void printTwice (string message)
{
    writeln (message);
    writeln (message);
}

void main ()
{
    printTwice ("D is fun!");
}
```

---

## 7. Returning values

A function returns a value using `return`.

Example:
```
// exercises/01-lessons/08-functions/07-01-return-basic/app.d
int square (int x)
{
    return x * x;
}

void main ()
{
    writeln (square (5));   // prints 25
}
```

---

## 8. Why functions must be simple

Functions should:

- do one thing  
- do it well  
- do it predictably  
- do nothing else  

Avoid:

- delegates  
- closures  
- lambdas  
- default parameters  
- implicit behavior  
- async/await (in other languages)  
- operators that expand into hidden behavior (`=>`)  

Simple functions behave like they did in the **System/360 era**:  
they do exactly what they appear to do.

This is essential for junior‑ready design.

---

## 9. Functions and correctness

Functions are the natural place to enforce:

- preconditions  
- postconditions  
- invariants  

Example:
```
// exercises/01-lessons/08-functions/09-01-contracts-basic/app.d
int divide (int a, int b)
{
    assert (b != 0, "b must not be zero");
    return a / b;
}
```

Contracts make behavior explicit.

---

## 10. Functions and loops

Functions work naturally with loops.

Example:
```
// exercises/01-lessons/08-functions/10-01-loop-basic/app.d
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

## 11. Common beginner mistakes

### Mistake 1: Forgetting to use the return value  
This compiles, but does not do what the student expects:

```
// exercises/01-lessons/08-functions/11-01-mistake-1/app.d
int add (int a, int b)
{
    return a + b;
}

void main ()
{
    add (3, 4);   // result ignored
}
```

### Mistake 2: Misunderstanding parameter flow  
This compiles, but demonstrates that parameters are **copies**, not references:

```
// exercises/01-lessons/08-functions/11-02-mistake-2/app.d
void increment (int x)
{
    x = x + 1;   // modifies only the local copy
}

void main ()
{
    int a = 10;
    increment (a);
    writeln (a);   // prints 10, not 11
}
```

### Mistake 3: Returning too early  
This compiles, but shows how `return` stops execution:

```
// exercises/01-lessons/08-functions/11-03-mistake-3/app.d
int demo ()
{
    writeln ("Before return");
    return 5;
    writeln ("After return");   // never runs
}

void main ()
{
    writeln (demo ());
}
```

All mistakes are **safe**, **compilable**, and **teachable**.

---

## 12. Hydratable runnable examples

All examples in this lesson have hydratable project paths:

- `exercises/01-lessons/08-functions/03-01-add-basic/app.d`  
- `exercises/01-lessons/08-functions/04-01-call-basic/app.d`  
- `exercises/01-lessons/08-functions/05-01-void-basic/app.d`  
- `exercises/01-lessons/08-functions/06-01-parameters-basic/app.d`  
- `exercises/01-lessons/08-functions/07-01-return-basic/app.d`  
- `exercises/01-lessons/08-functions/09-01-contracts-basic/app.d`  
- `exercises/01-lessons/08-functions/10-01-loop-basic/app.d`  
- `exercises/01-lessons/08-functions/11-01-mistake-1/app.d`  
- `exercises/01-lessons/08-functions/11-02-mistake-2/app.d`  
- `exercises/01-lessons/08-functions/11-03-mistake-3/app.d`  

Students can run, debug, modify, and experiment.

---

## 13. Master example reference

The dashboard should link to:

```
master-examples/08-functions/app.d
```

This example demonstrates:

- declaring functions  
- calling functions  
- returning values  
- using parameters  
- enforcing contracts  
- integrating functions with loops  

---

## 14. Glossary additions

This lesson introduces several important terms:

- function  
- parameter  
- argument  
- return value  
- void  
- contract  
- precondition  
- postcondition  

Each should have its own glossary entry.

---

## 15. Summary

- A function is a named block of code.  
- Functions take parameters and may return values.  
- Functions isolate behavior and reduce duplication.  
- Functions must be simple and predictable.  
- Contracts make function behavior explicit.  
- Functions integrate naturally with loops.  
- All examples are hydratable and runnable.  

Functions are the foundation of structured programming in D.
