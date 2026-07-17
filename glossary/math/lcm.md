# Least Common Multiple (lcm)

The **least common multiple** of two integers is the **smallest positive integer** that is a multiple of **both** numbers.

Example:
```
lcm(12, 18) = 36
```

Because:
- multiples of 12: 12, 24, 36, 48, …
- multiples of 18: 18, 36, 54, …
- the smallest number in both lists is 36

---

## 1. Multiples of each number

To find the lcm, list the positive multiples of each number.

Example for 12:
```
12, 24, 36, 48, …
```

Example for 18:
```
18, 36, 54, …
```

Common multiples:
```
36, 72, 108, …
```

Smallest common multiple:
```
36
```

So:
```
lcm(12, 18) = 36
```

---

## 2. Formal definition

For integers **a** and **b**, the lcm is the smallest integer **m > 0** such that:

```
m = a × k
m = b × n
```

for some positive integers **k** and **n**.

---

## 3. Special cases

### lcm with zero

If either number is zero:
```
lcm(n, 0) = 0
```

Because zero is a multiple of every integer, and no positive number can be a multiple of zero.

Examples:
```
lcm(10, 0) = 0
lcm(0, 10) = 0
lcm(0, 0) = 0
```

### lcm with negatives

The lcm is always **positive**, even if the inputs are negative:

```
lcm(-12, 18) = 36
lcm(-12, -18) = 36
```

---

## 4. lcm and prime factorization

You can compute lcm using prime factorization.

Example:
```
12 = 2 × 2 × 3
18 = 2 × 3 × 3
```

Take the **highest power** of each prime:
```
2² × 3² = 36
```

So:
```
lcm(12, 18) = 36
```

---

## 5. Relationship between gcd and lcm

For positive integers **a** and **b**, the gcd and lcm satisfy the identity:

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

See **glossary/gcd.md**.

---

## 6. Why lcm matters

The lcm is essential for:

- adding and subtracting fractions  
- synchronizing cycles  
- periodic behavior  
- solving integer equations  
- understanding prime structure  

The lcm is one of the core operations in arithmetic.

---

## See also

- **glossary/gcd.md**  
- **glossary/prime.md**  
- **glossary/composite.md**  
- **glossary/integer.md**
