# Multiple

A **multiple** of a number is a value you get by multiplying that number by a whole number (…, -3, -2, -1, 0, 1, 2, 3, …).  
Multiples grow in a steady, predictable pattern.

Example idea:
```
Multiples of 4:
4, 8, 12, 16, 20, ...
```

Each value is 4 multiplied by something.

---

## 1. Definition

A number **m** is a multiple of **n** if:

```
m == n * k
```

for some integer **k** (0, 1, 2, 3, …).

Examples:
- 21 is a multiple of 7 because 21 == 7 * 3  
- 0 is a multiple of every number because 0 == n * 0  
- 18 is a multiple of 9 because 18 == 9 * 2  

Multiples are exact.  
There is no remainder.

---

## 2. Multiples grow in steps

Multiples of a number form a simple pattern:

```
n, 2n, 3n, 4n, 5n, ...
```

Example:
```
Multiples of 6:
6, 12, 18, 24, 30, ...
```

Each step adds another **n**.

---

## 3. Zero is a multiple

Zero is always a multiple:

```
0 == n * 0
```

This is important for correctness.  
Many tutorials skip this, but Learn‑D includes it.

---

## 4. Negative multiples

Multiples can be negative if the multiplier is negative.

Example:
```
Multiples of 5:
..., -20, -15, -10, -5, 0, 5, 10, 15, 20, ...
```

Negative multiples follow the same rule:

```
m == n * k
```

with **k** allowed to be negative.

---

## 5. Can a multiple be multiplied by a negative integer?

Yes.

If **m** is a multiple of **n**, then:

```
m == n * k
```

for some integer **k**.

Multiply **m** by a negative integer **t**:

```
m' = m * t
```

Then:

```
m' == (n * k) * t
m' == n * (k * t)
```

Since **k * t** is still an integer,  
**m' is still a multiple of n.**

### Examples

12 is a multiple of 3 because 12 == 3 * 4.

Now multiply 12 by −2:
12 * (−2) == −24

Check:
−24 == 3 * (−8)

So −24 is still a multiple of 3.
  ```
  12 * (-2) == -24
  ```
  And −24 is still a multiple of 3.

- 5 is a multiple of 5.  
  Multiply by −7:  
  ```
  5 * (-7) == -35
  ```
  And −35 is still a multiple of 5.

- 0 is a multiple of every number.  
  Multiply by −9:  
  ```
  0 * (-9) == 0
  ```
  Still a multiple.

Negative multiplication does not break the definition.

---

## 6. Checking if a number is a multiple

To check if **m** is a multiple of **n**, divide:

- If the division has **no remainder**, then **m** is a multiple of **n**.
- If there is a remainder, it is **not** a multiple.

Example:
```
27 / 9 == 3 with no remainder → multiple
28 / 9 == 3 remainder 1 → not a multiple
```

---

## 7. Multiples and divisibility

Multiples and divisibility are the same idea from two directions:

- If **m** is a multiple of **n**, then **n** divides **m**.
- If **n** divides **m**, then **m** is a multiple of **n**.

Example:
```
30 is a multiple of 10.
10 divides 30.
```

See **glossary/divisible.md**.

---

## 8. Multiples and gcd/lcm

Multiples connect directly to:

- **gcd** (greatest common divisor)  
- **lcm** (least common multiple)

Examples:
- The gcd of two numbers divides all their multiples.  
- The lcm is the smallest positive number that is a multiple of both.

See **glossary/gcd.md** and **glossary/lcm.md**.

---

## 9. Why multiples matter

Multiples are used in:

- divisibility  
- gcd and lcm  
- prime factorization  
- ranges  
- iteration  
- modular arithmetic  
- algorithms  

Multiples are one of the core building blocks of number structure.

---

## See also

- **glossary/divisible.md**  
- **glossary/gcd.md**  
- **glossary/lcm.md**
