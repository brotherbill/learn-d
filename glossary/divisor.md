# Divisor

A **divisor** is an integer that divides another integer **exactly**, with **no remainder**.

Two strict rules:

1. **Both numbers must be integers.**  
2. **The divisor cannot be zero.**

Example:
```
10 ÷ 2 = 5   (no remainder)
```

So **2 is a divisor of 10**.

Example of a non‑divisor:
```
9 ÷ 2 = 4 remainder 1
```

So **2 is not a divisor of 9**.

---

## 1. Formal definition

An integer **d** is a divisor of an integer **n** if:

```
n = d × k
```

for some integer **k**, and **d ≠ 0**.

Example:
```
10 = 2 × 5
```

Therefore:
- 2 is a divisor of 10  
- 5 is a divisor of 10  

---

## 2. Why the divisor cannot be zero

Mathematically, division by zero is forbidden for three reasons:

### 1. `0 / 0` has **too many correct answers**
Any number **k** satisfies:
```
0 = 0 × k
```
So `0 / 0` does not have a single answer — it has **infinitely many**.

### 2. `n / 0` (where `n ≠ 0`) has **no correct answers**
There is no integer **k** such that:
```
n = 0 × k
```
because `0 × k` is always `0`.

### 3. Mathematics prefers **exactly one answer** to an expression
A well‑formed arithmetic expression should produce exactly **one** correct value.  
Division by zero produces **zero answers** or **infinitely many answers**, so it is excluded.

Nobody bothers explaining this to children, but this is the real reason.

---

## 3. Proper divisors

A **proper divisor** is any divisor **other than the number itself**.

For 10:
- proper divisors: 1, 2, 5  
- full divisors: 1, 2, 5, 10

---

## 4. Divisors and composite numbers

A number is **composite** if it has **more than two divisors**.

Example:
```
10 = 2 × 5
```

Divisors of 10:
- 1  
- 2  
- 5  
- 10  

Since 10 has more than two divisors, **10 is a composite number**.

Prime numbers have **exactly two** divisors:
- 1  
- the number itself

---

## 5. Why divisors matter

Divisors are essential for:
- factorization  
- prime/composite classification  
- number structure  
- divisibility  
- arithmetic correctness

They describe how integers break into parts.

---

## See also

- **glossary/composite.md**  
- **glossary/prime.md** (if you create one)  
- **glossary/factor.md** (if you create one)
