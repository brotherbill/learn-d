# 06 — Loop (while)

This lesson teaches how D repeats a block of code using a `while` loop.

Although D supports `for`, `do‑while`, and `foreach`, we intentionally begin with **only** the `while` loop.  
The `while` loop reveals the essential structure of all loops:

1. **initialize the loop**  
2. **body of the loop**  
3. **increment the loop**  

Every other loop form is a variation on this theme.

---

## 1. What is a loop?

A loop repeats a block of code until a predicate becomes false.

Sequence still applies — the loop simply repeats a sequence of statements.

---

## 2. The structure of a `while` loop

A `while` loop has three parts:

1. **Initialization** — set up the loop variable  
2. **Predicate** — the condition that controls repetition  
3. **Increment** — move the loop toward completion  

Example:
```
// exercises/01-lessons/06-loop/while-basic/app.d
int n = 1;                 // 1. initialize

while (n <= 3)             // 2. predicate
{
    writeln ("n = ", n);   //    body
    n = n + 1;             // 3. increment
}

writeln ("Done");
```

This prints:
```
n = 1
n = 2
n = 3
Done
```

The loop runs **three times**.

---

## 3. Initialization

Initialization prepares the loop variable.

Example:
```
// exercises/01-lessons/06-loop/initialization/app.d
int counter = 0;
```

If you forget initialization, the loop may behave incorrectly or not run at all.

---

## 4. Predicate

The predicate determines whether the loop continues.

Example:
```
// exercises/01-lessons/06-loop/predicate/app.d
while (counter < 5)
{
    writeln (counter);
    counter = counter + 1;
}
```

When the predicate becomes false, the loop stops.

---

## 5. Increment

Increment moves the loop toward completion.

Example:
```
// exercises/01-lessons/06-loop/increment/app.d
counter = counter + 1;
```

If you forget the increment, the predicate may never change, causing an infinite loop.

---

## 6. OFF‑BY‑1 (Fencepost Error)

A **fencepost error** (also called an **OFF‑BY‑1 error**) happens when a loop runs **one time too many** or **one time too few**.

This error comes directly from the three‑step loop structure:

1. initialization  
2. predicate  
3. increment  

If any of these are off by one, the loop behaves incorrectly.

### Example: OFF‑BY‑1 too many
```
// exercises/01-lessons/06-loop/off-by-one-too-many/app.d
int n = 1;

while (n <= 4)     // should have been <= 3
{
    writeln (n);
    n = n + 1;
}
```

This prints:
```
1
2
3
4
```

The loop ran **four** times instead of **three**.

### Example: OFF‑BY‑1 too few
```
// exercises/01-lessons/06-loop/off-by-one-too-few/app.d
int n = 1;

while (n < 3)      // should have been <= 3
{
    writeln (n);
    n = n + 1;
}
```

This prints:
```
1
2
```

The loop ran **two** times instead of **three**.

### Why this matters

Fencepost errors are extremely common because:

- the predicate is easy to mis‑specify  
- beginners confuse `<` with `<=`  
- increment interacts with the predicate  
- initialization interacts with the predicate  

Understanding OFF‑BY‑1 is essential for writing correct loops.

---

## 7. Dual Truth in loops

Just like selection, loops can suffer from **Dual Truth**:

- **Developer truth:**  
  “My indentation shows what belongs to the loop.”

- **Compiler truth:**  
  “Only the first statement after `while` belongs to the loop unless braces are used.”

Example of the indentation trap:
```
// exercises/01-lessons/06-loop/indentation-trap/app.d
int n = 1;

while (n <= 3)
    writeln ("Inside loop");
    writeln ("This ALWAYS runs");   // indentation lies

n = n + 1;
```

The compiler sees:

- The loop controls **only the first line**  
- The second line is **not** part of the loop  
- Indentation has **no meaning**  

### Course rule

To prevent Dual Truth:

**Always use braces**, even for a single statement.

---

## 8. Why we do NOT introduce `for`, `do‑while`, or `foreach` yet

Although these loop forms are perfectly fine, they hide the essential structure:

### `for`
Compresses initialization, predicate, and increment into one line.  
Beginners lose sight of the three intentional steps.

### `do‑while`
Runs the body before checking the predicate.  
This reverses the mental model and adds complexity.

### `foreach`
Iterates over collections automatically.  
This requires knowledge of arrays, slices, and containers.

### Course rule

The student must first master:

1. initialization  
2. predicate  
3. increment  

Once these skills are solid, the other loop forms follow easily and naturally.

---

## 9. Loop with input

Example:
```
// exercises/01-lessons/06-loop/input-loop/app.d
int count = 0;

while (count < 3)
{
    write ("Enter a word: ");
    string word = readln ();
    writeln ("You typed: ", word);

    count = count + 1;
}

writeln ("Done");
```

This loop:
- prompts three times  
- reads three inputs  
- prints three outputs  

---

## 10. Common beginner mistakes

### Mistake 1: Forgetting initialization
```
// exercises/01-lessons/06-loop/mistake-1/app.d
int n;            // uninitialized
while (n < 5)     // unpredictable behavior
{
    writeln (n);
    n = n + 1;
}
```

### Mistake 2: Forgetting increment
```
// exercises/01-lessons/06-loop/mistake-2/app.d
int n = 0;

while (n < 5)
{
    writeln (n);
    // missing increment → infinite loop
}
```

### Mistake 3: Mis‑indentation (Dual Truth)
```
// exercises/01-lessons/06-loop/mistake-3/app.d
int n = 0;

while (n < 3)
    writeln ("Inside loop");
    writeln ("Outside loop");   // always runs
```

Always use braces.

---

## 11. Hydratable runnable examples

All examples in this lesson have hydratable project paths:

- `exercises/01-lessons/06-loop/while-basic/app.d`  
- `exercises/01-lessons/06-loop/initialization/app.d`  
- `exercises/01-lessons/06-loop/predicate/app.d`  
- `exercises/01-lessons/06-loop/increment/app.d`  
- `exercises/01-lessons/06-loop/off-by-one-too-many/app.d`  
- `exercises/01-lessons/06-loop/off-by-one-too-few/app.d`  
- `exercises/01-lessons/06-loop/indentation-trap/app.d`  
- `exercises/01-lessons/06-loop/input-loop/app.d`  
- `exercises/01-lessons/06-loop/mistake-1/app.d`  
- `exercises/01-lessons/06-loop/mistake-2/app.d`  
- `exercises/01-lessons/06-loop/mistake-3/app.d`  

The student can:
- run  
- debug  
- modify  
- experiment  

This is essential for learning how loops behave.

---

## 12. Master example reference

The dashboard should link to:

```
master-examples/06-loop/app.d
```

This example demonstrates:
- initialization  
- predicate  
- increment  
- safe block structure  
- correct loop behavior  
- OFF‑BY‑1 awareness  

---

## 13. Glossary additions

This lesson introduces several important terms:

- loop  
- while loop  
- initialization  
- predicate  
- increment  
- Dual Truth  
- fencepost error  
- OFF‑BY‑1  

Each should have its own glossary entry.

---

## 14. Summary

- A loop repeats a block of code while a predicate is true.  
- The `while` loop teaches the essential structure of all loops.  
- Every loop requires:  
  1. initialization  
  2. predicate  
  3. increment  
- OFF‑BY‑1 (fencepost errors) happen when any of these steps are off by one.  
- Indentation does not create blocks; braces do.  
- Dual Truth causes bugs when indentation suggests meaning the compiler does not follow.  
- Other loop forms are postponed until the student masters the fundamentals.  
- Every example has a hydratable project.  

The `while` loop is the foundation of repetition in D.
