# Floating‑Point Number

A **floating‑point number** is a computer’s approximation of a real number.  
Floating‑point values have **limited precision**, **rounding**, and **small errors** because computers cannot store real numbers exactly.

Floating‑point numbers are used for:
- measurement  
- physics  
- graphics  
- continuous values  
- any calculation involving real numbers  

But they are always **approximations**, never exact real numbers.

---

## 1. Why floating‑point numbers are approximations

Real numbers live on a continuous number line.  
Digital computers do not.

Computers have **finite memory**, so they can only store **finite information**.  
Real numbers often have **infinitely many digits**, especially irrational numbers like:

```
π
√2
e
```

No finite machine can store all those digits.

So:

> Floating‑point numbers are the closest representable approximations of real numbers.

This is a physical limitation, not a software bug.

---

## 2. Floating‑point types in D

D provides three floating‑point types:

- `float`  → 32‑bit  
- `double` → 64‑bit  
- `real`   → highest precision available on the system  

Each type has:
- a fixed number of bits  
- a fixed number of representable values  
- a fixed precision limit  

Example:
```d
double x = 3.141592653589793;
```

This is **not** π.  
It is only the closest 64‑bit approximation.

---

## 3. Finite memory cannot store infinite digits

A fun historical example:

- *Star Trek* (1966) imagined the Starship Enterprise’s computer as a powerful **32‑bit** machine.  
- A 32‑bit computer has exactly **32 bits** to store each floating‑point number.  
- That is a tiny, fixed amount of information.

With only 32 bits (or 64 bits, or even 128 bits), a computer is **physically incapable** of storing:

- π  
- √2  
- e  
- most rational numbers  
- most real numbers  

These numbers have infinitely many digits.  
Finite machines cannot store infinite information.

This is why floating‑point arithmetic has rounding and small errors.

---

## 4. Many rational numbers cannot be represented exactly

Even simple rational numbers often cannot be stored exactly in binary floating‑point.

Example:
```
0.1
```

This decimal has no exact binary representation.  
The computer stores the closest approximation.

Example in D:
```d
double y = 0.1;
writeln(y);   // prints 0.10000000000000001 or similar
```

This is normal and expected.

---

## 5. Floating‑point operations are approximate

Because floating‑point numbers are approximations, floating‑point **operations** are also approximate.

Examples:
```
0.1 + 0.2   → 0.30000000000000004
sqrt(2)     → 1.4142135623730951
```

These results are close, but not exact.

Floating‑point math is deterministic, but not exact.

---

## 6. Best accuracy: add small numbers first

When adding many floating‑point numbers, the **order of addition matters**.

For best accuracy:

> **Add numbers closest to 0 first (both positive and negative), then gradually add numbers further from 0.**

This reduces rounding error because:

- small numbers added to large numbers may be “swallowed” by limited precision  
- adding small numbers together preserves their detail  
- once the small numbers are combined, the result is large enough to add safely to bigger numbers

Example idea:

Bad order:
```
1000000.0 + 0.0001 + 0.0001 + 0.0001
```

Good order:
```
0.0001 + 0.0001 + 0.0001 + 1000000.0
```

The second order keeps the tiny values from being rounded away.

This rule is a cornerstone of numerical computing.

---

## 7. Floating‑point vs integer arithmetic

| Kind            | Exact? | Deterministic? | Notes |
|-----------------|--------|----------------|-------|
| Integer         | Yes    | Yes            | Whole numbers only |
| Floating‑point  | No     | Yes            | Approximations of real numbers |

Integer arithmetic is exact.  
Floating‑point arithmetic is approximate.

---

## 8. Why floating‑point matters

Floating‑point numbers are essential for:

- physics  
- engineering  
- graphics  
- simulation  
- measurement  
- continuous math  

They let computers work with real‑world quantities, even though the representation is approximate.

---

## See also

- glossary/real-number.md  
- glossary/rational-number.md  
- glossary/integer.md  
- glossary/number-theory.md
