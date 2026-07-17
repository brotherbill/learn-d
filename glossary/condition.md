# Condition

A **condition** is a true/false test that controls what your program does next.

Conditions appear in:
- selection (`if`, `else if`, `else`)
- loops (`while`)
- any place where the program must decide or repeat

A condition is always a **predicate** — an expression that evaluates to `true` or `false`.

---

## 1. Conditions in selection

```d
if (n > 5)      // condition
{
    writeln ("Greater");
}
```

The condition `n > 5` decides whether the block runs.

---

## 2. Conditions in loops

```d
while (n < 3)   // condition
{
    writeln (n);
    n = n + 1;
}
```

The loop repeats **while** the condition is true.

When the condition becomes false, the loop stops.

---

## 3. Conditions use predicates

Common predicate operators:
- `==` equal  
- `!=` not equal  
- `<` less than  
- `>` greater than  
- `<=` less than or equal  
- `>=` greater than or equal  

A condition must produce **true** or **false**.

See **glossary/predicate.md** for details.

---

## 4. Condition vs assignment

A condition uses comparison (`==`), not assignment (`=`):

```d
if (n == 5)   // correct: comparison
```

```d
if (n = 5)    // wrong: assignment
```

Using `=` inside a condition is a common beginner mistake.

---

## 5. Why conditions matter

Conditions let your program:
- make decisions  
- choose between paths  
- repeat actions  
- stop repeating actions  

Without conditions, a program cannot respond to changing values.

---

## See also

- **glossary/predicate.md**  
- **glossary/selection.md**  
- **glossary/loop.md**  
- **notes/05-selection.md**  
- **notes/06-loops.md**
