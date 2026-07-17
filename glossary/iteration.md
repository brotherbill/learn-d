# Iteration

**Iteration** means doing something **again and again**, one step at a time.

In programming, iteration is how we repeat an action:

- over a sequence  
- over a range of numbers  
- until a condition is met  

Iteration is the foundation of loops.

---

## 1. Iteration is repeated action

When you iterate, you perform the same operation multiple times.

Example idea:
```
Add 1 to n, ten times.
```

Iteration makes repeated work precise and mechanical.

---

## 2. Edge case: zero iterations

A loop may run **zero times**.

Example:
```d
foreach (i; 5 .. 5) {
    writeln(i);
}
```

The range `5 .. 5` contains **no numbers**, so the loop body never runs.

Zero iterations is a valid and important behavior.

---

## 3. Edge case: one iteration

A loop may run **exactly once**.

Example:
```d
foreach (i; 7 .. 8) {
    writeln(i);
}
```

The range `7 .. 8` contains exactly one number:
```
7
```

So the loop runs once.

---

## 4. Iteration in D

D provides several ways to iterate.  
The most common is the `foreach` loop.

Example:
```d
foreach (i; 1 .. 5) {
    writeln(i);
}
```

This prints:
```
1
2
3
4
```

The range `1 .. 5` means:

- start at 1  
- stop before 5  
- step by 1  

---

## 5. Iteration over arrays

You can iterate over each element in an array.

Example:
```d
int[] numbers = [3, 5, 7];

foreach (n; numbers) {
    writeln(n);
}
```

This prints:
```
3
5
7
```

Iteration lets you process each element in order.

---

## 6. Iteration and counting

Iteration often uses a **counter** — a variable that changes each time.

Example:
```d
int count = 0;

foreach (i; 1 .. 4) {
    count += 1;
}
```

After the loop:
```
count == 3
```

Because the loop ran three times: 1, 2, 3.

---

## 7. Iteration and algorithms

Most algorithms depend on iteration:

- searching  
- sorting  
- counting  
- scanning arrays  
- building results step by step  

Iteration is how computers perform structured, repeated work.

---

## 8. Why iteration matters

Iteration is essential for:

- loops  
- arrays  
- algorithms  
- number processing  
- text processing  
- correctness‑first programming  

Iteration is one of the most important ideas in Learn‑D.

---

## See also

- **glossary/array.md**  
- **glossary/range.md**  
- **glossary/loop.md**
