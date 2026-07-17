# Assignment

**Assignment** replaces the value stored in a variable.

It uses the `=` operator:

```d
n = 10;
```

This means:
- take the existing variable `n`
- erase its old value completely
- store the new value `10`

Assignment is **full and complete**.  
Nothing remains of the previous value.

---

## 1. Assignment vs initialization

Initialization sets the **first** value:

```d
int n = 3;   // initialization
```

Assignment replaces an **existing** value:

```d
n = 10;      // assignment
```

Initialization happens once.  
Assignment can happen many times.

---

## 2. Assignment vs comparison

Assignment uses `=`.  
Comparison uses `==`.

```d
n = 5;       // assignment
n == 5;      // comparison (true/false)
```

Using `=` inside a predicate is a common beginner error.

See **notes/05-selection.md** for details.

---

## 3. Type matching

The value on the right must match the variable’s type:

```d
int n;
n = 42;        // ok
n = "hello";   // error: wrong type
```

---

## 4. Why assignment matters

Assignment lets your program:
- update values  
- track changes  
- respond to input  
- evolve state over time  

Without assignment, a program cannot change its behavior.

---

## See also

- **glossary/initialization.md**  
- **glossary/variable.md**  
- **notes/02-variables.md**  
- **notes/05-selection.md**
