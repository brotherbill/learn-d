# Sequence

**Sequence** means running statements in order, one after another, from top to bottom.  
It is the simplest control structure in programming.

In D, a sequence is just a list of statements:

```d
writeln("A");
writeln("B");
writeln("C");
```

This prints:
```
A
B
C
```

Each statement runs after the previous one finishes.

---

## 1. Sequence is the default control flow

Every D program begins with sequence:

```d
int x = 10;
int y = x + 5;
writeln(y);
```

The statements run in this exact order.

Sequence is the foundation for all other control structures.

---

## 2. Sequence has no branching and no looping

Sequence does **not**:

- choose between paths (that is selection)  
- repeat blocks (that is iteration)  

Sequence is simply:

```
do this
then this
then this
```

No decisions.  
No repetition.  
Just straight‑line execution.

---

## 3. Sequence with variables

Variables change over time as the sequence runs.

Example:
```d
int n = 2;
n = n + 3;
writeln(n);
```

The value of `n` updates as the sequence progresses.

---

## 4. Sequence with function calls

Functions run in sequence too:

```d
startEngine();
driveForward();
stopEngine();
```

Each call happens in order.

---

## 5. Sequence inside blocks

Blocks also run in sequence:

```d
{
    int a = 1;
    int b = 2;
    writeln(a + b);
}
```

Inside the braces, statements run top‑to‑bottom.

---

## 6. Sequence is one of the three basic control structures

Programming has three fundamental control structures:

- **sequence** → run statements in order  
- **selection** → choose one path  
- **iteration** → repeat a block  

All programs are built from these three.

Sequence is the simplest and most common.

---

## 7. Why sequence matters

Sequence is essential for:

- predictable execution  
- step‑by‑step logic  
- building larger control structures  
- understanding program flow  
- reading and writing code clearly  

Every program uses sequence, even when selection and iteration appear.

---

## See also

- glossary/selection.md  
- glossary/iteration.md  
- glossary/statement.md  
- glossary/block.md
