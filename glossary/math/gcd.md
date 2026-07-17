# Greatest Common Divisor (gcd)

The **greatest common divisor** of two integers is the **largest positive integer** that divides **both** numbers exactly (with no remainder).

Example:
```
gcd(12, 18) = 6
```

Because:
- 12 is divisible by 6  
- 18 is divisible by 6  
- and no larger number divides both

---

## 1. Divisors of each number

To find the gcd, list the positive divisors of each number.

Example for 12:
```
1, 2, 3, 4, 6, 12
```

Example for 18:
```
1, 2, 3, 6, 9, 18
```

Common divisors:
```
1, 2, 3, 6
```

Largest common divisor:
```
6
```

So:
```
gcd(12, 18) = 6
```

---

## 2. Formal definition

For integers **a** and **b**, the gcd is the largest integer **d > 0** such that:

```
a = d × k
b = d × m
```

for some integers **k** and **m**.

---

## 3. Special cases

### gcd with zero
```
gcd(n, 0) = |n|
```

Because every integer divides 0, and the largest positive divisor of **n** is **|n|**.

Examples:
```
gcd(10, 0) = 10
gcd(0, 10) = 10
gcd(0, 0) = 0   (by definition)
```

### gcd with negatives

The gcd is always **positive**, even if the inputs are negative:

```
gcd(-12, 18) = 6
gcd(-12, -18) = 6
```

---

## 4. Every pair of integers has a gcd

For any two integers **a** and **b**, the gcd always exists and is always **≥ 1**.

Reason:

- **1** divides every integer.  
- So **1** is always a common divisor.  
- Therefore the greatest common divisor cannot be smaller than 1.

We will cover this again in **prime.md**.

---

## 5. gcd and prime factorization

You can compute gcd using prime factorization.

Example:
```
12 = 2 × 2 × 3
18 = 2 × 3 × 3
```

Common prime factors:
```
2 × 3 = 6
```

So:
```
gcd(12, 18) = 6
```

---

## 6. gcd and coprime numbers

Two numbers are **coprime** (also called **relatively prime**) if their gcd is **1**.

Examples:
```
gcd(8, 15) = 1   → coprime
gcd(14, 21) = 7  → not coprime
```

Coprime numbers share **no prime factors**.

---

## 7. Relationship between gcd and lcm

For positive integers **a** and **b**, the gcd and lcm are connected by the identity:

```
a × b = gcd(a, b) × lcm(a, b)
```

Example:
```
12 × 18 = 216
gcd(12, 18) = 6
lcm(12, 18) = 36

6 × 36 = 216
```

This identity comes from prime factorization:

- gcd uses the **minimum** exponent of each prime  
- lcm uses the **maximum** exponent of each prime  

Together, they reconstruct the full prime structure of both numbers.

See **glossary/lcm.md**.

---

## 8. Why gcd matters

The gcd is essential for:

- simplifying fractions  
- number theory  
- divisibility  
- modular arithmetic  
- solving integer equations  
- understanding prime structure  

It is one of the most important operations in arithmetic.

---

## See also

- **glossary/divisor.md**  
- **glossary/factor.md**  
- **glossary/composite.md**  
- **glossary/prime.md**  
- **glossary/lcm.md**
