# Hexadecimal

**Hexadecimal** (often shortened to **hex**) is a number system based on 16 instead of 10.  
Beginners do **not** need to do arithmetic in hex.  
They only need to **recognize** hex notation and **convert** hex ↔ decimal when needed.

Hex is used in programming because it is a compact way to represent binary values.

---

## 1. What hexadecimal is

Hexadecimal uses sixteen digits:

```
0 1 2 3 4 5 6 7 8 9 A B C D E F
```

The letters represent decimal values:

```
A = 10
B = 11
C = 12
D = 13
E = 14
F = 15
```

Beginners should **memorize these six mappings**.  
They are the only non‑obvious part of hex notation.

Hex numbers often appear with a prefix:

```
0x1A
0xFF
0x7B
```

The `0x` prefix means “this number is hexadecimal.”

---

## 2. Why hexadecimal exists

Computers use **binary** (base‑2).  
Hexadecimal is a convenient way to write binary because:

- 1 hex digit = 4 binary bits  
- 2 hex digits = 8 bits (one byte)  
- 8 hex digits = 32 bits  
- 16 hex digits = 64 bits  

Hex is compact, readable, and maps directly to binary.

---

## 3. What beginners need to know

Beginners only need **three skills**:

### 1. Recognize hexadecimal notation
If you see:

```
0x3F
0xA0
0xFFEE
```

you should know:  
**“This is a hex number.”**

### 2. Convert hex ↔ decimal
You should be able to convert:

- hex → decimal  
- decimal → hex  

This is enough for all beginner programming tasks.

### 3. Use a calculator
You do **not** need to convert manually.  
You do **not** need to add or subtract in hex.  
You do **not** need to memorize conversion tricks.

A calculator is perfectly acceptable.

---

## 4. What beginners do *not* need to learn

You do **not** need to:

- add hex numbers  
- subtract hex numbers  
- multiply or divide in hex  
- do manual binary grouping  
- memorize hex arithmetic rules  

These skills are optional.

### Bonus skills (optional)
If you learn manual hex arithmetic, great — but:

> **IMHO, it is not worth the time and effort for beginners.**

Hex arithmetic is rarely needed outside of low‑level programming.

---

## 5. What EXPERTS are expected to know

Experts working close to hardware, memory, or binary data are expected to:

### 1. Manually convert between hexadecimal and decimal
Experts should be able to look at:

```
0x3F
```

and know it is:

```
63 decimal
```

without using a calculator.

### 2. Add and subtract hexadecimal numbers
Experts should be able to do:

- hex addition  
- hex subtraction  
- hex offsets  
- hex address arithmetic  

These skills matter when working with:

- memory addresses  
- hardware registers  
- binary protocols  
- embedded systems  
- debugging tools  
- disassemblers  

Beginners do **not** need these skills.  
Experts do.

---

## 6. Hexadecimal numbers are always non‑negative

Hexadecimal notation is used for **non‑negative integers only**.

Examples:

```
0x00
0x1A
0xFF
0x1234ABCD
```

Hex numbers are **never negative**.  
If you need a negative number, you write it in decimal:

```
-42
```

Hex is used for:

- memory addresses  
- offsets  
- sizes  
- bit masks  
- raw binary values  

All of these are **zero or positive**.

---

## 7. Popular hex numbers in IT culture

Some hex numbers are famous in programming culture because they spell words or jokes when read as hex digits.

### `0xDEADBEEF`
A classic “marker value” used in debugging.  
It stands out in memory dumps and means:

**“This memory should never be used.”**

### `0xC0FFEE`
Looks like the word “coffee.”  
Often used as a fun placeholder value in examples or debugging.

These values are not special to computers — they are just memorable hex numbers programmers like to use.

---

## 8. Why hexadecimal is useful

Hex is used for:

- memory addresses  
- color codes  
- binary data  
- bit masks  
- file formats  
- debugging  
- hardware registers  
- network packets  

Hex is simply a readable way to show binary values.

---

## 9. Summary

Hexadecimal is:

- base‑16  
- uses digits 0–9 and A–F  
- A–F map to 10–15  
- written with `0x` prefix  
- compact and binary‑friendly  
- always non‑negative  

Beginners need to:

- **recognize** hex notation  
- **convert** hex ↔ decimal  
- **use a calculator**  
- **memorize A–F = 10–15**

Experts are expected to:

- manually convert hex ↔ decimal  
- add and subtract hex numbers  

Beginners do **not** need to learn hex arithmetic.

---

## See also

- glossary/binary.md  
- glossary/integer.md  
- glossary/decimal.md  
- glossary/unicode.md  
- glossary/ascii.md
