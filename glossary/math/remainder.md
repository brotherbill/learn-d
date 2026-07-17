# Remainder

A **remainder** is the amount left over after division.  
The remainder may be **0**.

Example:
```
12 ÷ 3 = 4 remainder 0
```

Here the remainder is **0**, because 12 divides evenly by 3.

Example with a non‑zero remainder:
```
7 ÷ 2 = 3 remainder 1
```

Here the remainder is **1**, because 7 does not divide evenly by 2.

The remainder tells **what is left** after taking out as many whole copies of the divisor as possible.

---

## 1. Remainder in division

Division has three parts:

- **dividend** → the number being divided  
- **divisor**  → the number you divide by  
- **remainder** → what is left over  

Formal rule:
```
a = b × q + r
```

Where:
- **q** is the quotient  
- **r** is the remainder  
- **0 ≤ r < b**

Example:
```
17 ÷ 5 = 3 remainder 2
```

Because:
```
17 = 5 × 3 + 2
```

---

## 2. Remainder and divisibility

A number **a** is divisible by **b** if and only if the remainder is **0**.

Examples:
```
12 ÷ 3 = 4 remainder 0   → divisible
18 ÷ 6 = 3 remainder 0   → divisible
7 ÷ 2  = 3 remainder 1   → not divisible
```

The remainder shows whether the division is exact.

---

## 3. Remainder in modular arithmetic

Remainders are the foundation of **modular arithmetic**.

Example:
```
17 % 5 = 2
```

This means:
```
17 mod 5 = 2
```

The remainder is the “wrapped‑around” result after dividing by the modulus.

Modular arithmetic is used in:
- even/odd tests  
- clock arithmetic  
- hashing  
- cryptography  
- number‑theory structure  

---

## 4. Remainders in gcd calculations

The Euclidean Algorithm uses remainders to compute gcd:

Example:
```
17 = 5 × 3 + 2   → remainder 2
5  = 2 × 2 + 1   → remainder 1
2  = 1 × 2 + 0   → remainder 0
```

The last non‑zero remainder is the gcd:
```
gcd = 1
```

Remainders drive the entire process.

---

## 5. Remainder in programming

In programming, the remainder is produced by the `%` operator.

Example in D:
```d
int q = 17 / 5;   // q == 3
int r = 17 % 5;   // r == 2
```

- `/` gives the quotient  
- `%` gives the remainder  

The remainder always satisfies:
```
0 ≤ r < divisor
```

---

## 6. Why remainders matter

Remainders are essential for:

- divisibility  
- modular arithmetic  
- gcd calculations  
- number‑theory structure  
- even/odd tests  
- integer division in programming  

Remainders tell **what is left**, including the case where nothing is left (remainder 0).

---

## See also

- glossary/quotient.md  
- glossary/divisible.md  
- glossary/factor.md  
- glossary/multiple.md  
- glossary/gcd.md  
- glossary/integer.md
