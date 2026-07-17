# Quotient

A **quotient** is the result of a division.  
When you divide one number by another, the quotient tells **how many times** the divisor fits inside the dividend.

Example:
```
12 ÷ 3 = 4
```

So **4 is the quotient**.

---

## 1. Quotient in division

Division has three parts:

- **dividend** → the number being divided  
- **divisor**  → the number you divide by  
- **quotient** → the result  

Example:
```
dividend = 20
divisor  = 5
quotient = 4
```

Because:
```
20 = 5 × 4
```

The quotient is the number that makes the multiplication true.

---

## 2. Quotient in integer divisibility

In integer divisibility, the quotient must be an **integer**.

A number **a** is divisible by **b** if:
```
a == b × k
```
for some integer **k**.

Here, **k** is the quotient.

Examples:
```
12 ÷ 3 = 4     → quotient is 4
18 ÷ 6 = 3     → quotient is 3
```

If the quotient is not an integer, the division is **not** integer‑divisible.

Example:
```
7 ÷ 2 = 3 remainder 1
```

The quotient is **not** an integer, so 7 is not divisible by 2.

See **glossary/divisible.md**.

---

## 3. Quotient with remainder

When division does not divide evenly, we write:

```
a = b × q + r
```

Where:
- **q** is the quotient  
- **r** is the remainder  

Example:
```
17 ÷ 5 = 3 remainder 2
```

So:
```
17 = 5 × 3 + 2
```

The quotient is **3**.

---

## 4. Quotient in gcd and lcm

Quotients appear in gcd calculations:

Example:
```
18 ÷ 6 = 3
12 ÷ 6 = 2
```

The gcd is the largest number that divides both with integer quotients.

Quotients also appear in lcm reasoning:

Example:
```
12 ÷ 4 = 3
12 ÷ 6 = 2
```

The lcm is the smallest number that gives integer quotients for both divisors.

See **glossary/gcd.md** and **glossary/lcm.md**.

---

## 5. Quotient in programming

In programming, division produces:

- a **quotient**  
- sometimes a **remainder** (for integer division)  

Example in D:
```d
int q = 17 / 5;   // q == 3
int r = 17 % 5;   // r == 2
```

The `/` operator gives the quotient.  
The `%` operator gives the remainder.

---

## 6. Why quotients matter

Quotients are essential for:

- divisibility  
- factorization  
- gcd and lcm  
- modular arithmetic  
- parity (even/odd)  
- number‑theory structure  
- integer division in programming  

Quotients tell how numbers “fit” inside each other.

---

## See also

- **glossary/divisible.md**  
- **glossary/factor.md**  
- **glossary/multiple.md**  
- **glossary/gcd.md**  
- **glossary/lcm.md**  
- **glossary/integer.md**
