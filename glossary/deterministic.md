# Deterministic

A system is **deterministic** when it always behaves the **same way** every time.  
The same input produces the same output, with no surprises and no randomness.

Deterministic systems are predictable, stable, and safe to reason about.

---

## 1. Deterministic means “always the same”

If you run the same code twice, and it produces the same result twice, it is deterministic.

Example idea:
```
Add 2 + 3.
You always get 5.
```

There is no variation.  
No guessing.  
No hidden behavior.

---

## 2. Deterministic behavior in programming

Most programming operations are deterministic:

- arithmetic  
- comparisons  
- ranges  
- loops  
- array indexing  

Example:
```d
int x = 4 + 7;   // always 11
```

This never changes.  
It is guaranteed.

---

## 3. Deterministic loops

A loop that iterates over a range is deterministic.

Example:
```d
foreach (i; 1 .. 4) {
    writeln(i);
}
```

This always prints:
```
1
2
3
```

The loop never prints different numbers.  
The range never changes.  
The behavior is fixed.

See **glossary/loop.md** and **glossary/range.md**.

---

## 4. Deterministic vs. non‑deterministic

### Deterministic:
- same input → same output  
- predictable  
- repeatable  
- stable  
- safe to reason about  

### Non‑deterministic:
- same input → different output  
- unpredictable  
- depends on outside events  
- unstable  
- harder to reason about  

---

## 5. Why determinism matters

Deterministic systems are easier to:

- test  
- debug  
- reason about  
- prove correct  
- trust  

They behave like math:  
stable, exact, and repeatable.

---

## 6. Moving behavior to the deterministic side

Whenever possible, systems should be designed so that **more behavior becomes deterministic**.

If something *can* be made deterministic, it *should* be:

- predictable behavior is easier to understand  
- deterministic code is easier to test  
- deterministic systems are safer and more reliable  
- deterministic rules reduce surprises and errors  

The goal is to push as much behavior as possible into the deterministic category.

What remains is **pure non‑determinism**, which cannot be made deterministic by definition.

---

## See also

- **glossary/non-deterministic.md**  
- **glossary/loop.md**  
- **glossary/range.md**  
- **glossary/iteration.md**
