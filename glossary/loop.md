# Loop

A **loop** is a control structure that performs an action **multiple times**, one iteration after another.  
Loops are how programs repeat work in a precise, mechanical, correctness‑first way.

In Learn‑D, loops are built on **iteration**, **ranges**, and **deterministic control flow**.

---

## 1. A loop performs repeated action

A loop runs the same block of code again and again.

Example idea:
```
Print numbers 1 through 4.
```

A loop makes repeated work explicit and structured.

See **glossary/iteration.md**.

---

## 2. Origin: paper tape loops

The word **loop** comes from early computing.

Programs were stored on **paper tape** — a long strip of punched holes.  
Engineers discovered that if you **taped the end of the strip back to the beginning**, the tape would feed through the reader **forever**, repeating the same instructions.

This physical loop created a **program loop**:

- the tape moved  
- the instructions repeated  
- the machine kept running the same code  

Modern loops are the digital version of that paper tape circle.

---

## 3. Zero iterations (edge case)

A loop may run **zero times**.

Example:
```d
foreach (i; 5 .. 5) {
    writeln(i);
}
```

The range `5 .. 5` contains **no values**, so the loop body never runs.

Zero iterations are important for correctness:

- empty arrays  
- empty ranges  
- filtered results with no matches  

A correct loop must handle zero iterations without special cases.

See **glossary/range.md**.

---

## 4. One iteration (edge case)

A loop may run **exactly once**.

Example:
```d
foreach (i; 7 .. 8) {
    writeln(i);
}
```

The range `7 .. 8` contains exactly one value:
```
7
```

So the loop runs once.

One iteration is the simplest non‑empty case and is essential for understanding loop behavior.

---

## 5. Loops in D

The most common loop in D is `foreach`.

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

This is deterministic and error‑free.

---

## 6. Looping over arrays

Loops can iterate over each element in an array.

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

Loops process each element in order.

See **glossary/array.md**.

---

## 7. Loop counters

Loops often use a **counter** — a variable that changes each time.

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

Counters help measure loop behavior.

---

## 8. Loops and algorithms

Most algorithms depend on loops:

- searching  
- sorting  
- scanning arrays  
- counting  
- building results step by step  

Loops are the backbone of deterministic computation.

---

## 9. Why loops matter

Loops are essential for:

- iteration  
- arrays  
- algorithms  
- number processing  
- text processing  
- correctness‑first programming  

Loops are one of the core ideas in Learn‑D.

---

## See also

- **glossary/iteration.md**  
- **glossary/range.md**  
- **glossary/array.md**
