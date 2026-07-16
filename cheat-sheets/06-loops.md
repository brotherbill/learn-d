# Cheat Sheet — Loops (while)

Quick review of Lesson 06.

---

## 1. What is a loop?

A loop repeats a block of code **while** a predicate is true.

Sequence runs once.  
Selection chooses a path.  
Loops repeat.

---

## 2. Basic `while` loop

```d
int n = 0;

while (n < 3)
{
    writeln ("n = ", n);
    n = n + 1;
}
```

Output:
```
n = 0
n = 1
n = 2
```

The loop stops when the predicate becomes false.

---

## 3. Loop anatomy

Every loop has three parts:

1. **Initialization** — set the starting value  
2. **Predicate** — true/false test that controls repetition  
3. **Increment** — change the variable so the predicate eventually becomes false

Example:

```d
int n = 1;          // initialization
while (n <= 5)      // predicate
{
    writeln (n);
    n = n + 1;      // increment
}
```

---

## 4. Zero‑iteration loops

If the predicate is false at the start, the loop runs **zero times**.

```d
int n = 10;

while (n < 5)
{
    writeln ("Inside loop");
}
```

Output:
```
(nothing)
```

Zero‑iteration loops are normal.

---

## 5. Infinite loops (warning)

If the increment never changes the predicate to false, the loop never ends.

```d
int n = 0;

while (n < 5)
{
    writeln (n);
    // missing increment → infinite loop
}
```

Always include an increment.

---

## 6. Common beginner mistakes

### Forgetting the increment
```d
while (n < 5)
{
    writeln (n);
}   // infinite loop
```

### Changing the wrong variable
```d
int n = 0;
int x = 0;

while (n < 5)
{
    x = x + 1;   // wrong variable
}
```

### Using `=` instead of `==` in the predicate
```d
while (n = 5)   // wrong: assignment
```

Correct:
```d
while (n == 5)
```

### Expecting the loop to “guess” the stopping point  
Loops are mechanical.  
They only stop when the predicate becomes false.

---

## 7. Hydratable example

Path:
```
exercises/01-lessons/06-loops/basic/app.d
```

Example:
```d
int n = 1;

while (n <= 3)
{
    writeln ("Loop iteration: ", n);
    n = n + 1;
}
```

---

## 8. Summary

- Loops repeat while the predicate is true  
- Initialization → predicate → increment  
- Zero‑iteration loops are normal  
- Missing increments cause infinite loops  
- Predicates must be true/false expressions  
- Loops are predictable and mechanical  

Loops are the foundation of repetition in D.
