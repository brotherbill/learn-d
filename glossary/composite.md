# Composite

A **composite** is anything made from **multiple parts**.

In Learn‑D, “composite” usually refers to **composite values** in programming.  
In mathematics, “composite” refers to **composite numbers**.  
Both meanings share the same idea: *built from smaller pieces*.

---

## 1. Composite (programming)

A **composite value** holds multiple pieces of data together.

Primitive types hold one value:
- `int` → one number  
- `bool` → one truth value  
- `string` → one text reference  

Composite types hold **several values** in one structure.

### Examples

#### Dynamic array  
```d
int[] scores = [10, 20, 30];
```
This composite contains **three integers**.

#### Static array  
```d
int[3] triple = [1, 2, 3];
```

#### Struct (later in the course)  
```d
struct Point { int x; int y; }
```

---

## 2. Composite (mathematics)

A **composite number** is an integer that is **not prime** because it can be factored into smaller integers.

Example:
```
10 = 2 × 5
```

So **10 is a composite number**.

Composite numbers have more than two positive divisors.  
Prime numbers have exactly two.

### Important restriction

Composite numbers apply **only** to positive integers **2 and up**.

They do **not** apply to:
- negative numbers  
- zero  
- one  

Reason:
- The prime/composite classification is defined only on **positive integers**.  
- Negative numbers *do* have factorizations (example: −1 = −1 × 1), but number theory does not classify them as prime or composite.  
- Zero is divisible by every integer, making classification meaningless.  
- One has exactly one divisor (itself), so it is neither prime nor composite.

The restriction is a **definition choice**, not a mathematical limitation.


---

## 3. Why composites matter

Composites (in programming) let your program represent **richer information** than a single value.

They are essential for:
- collections  
- records  
- tables  
- game state  
- real‑world data modeling  

Composites (in math) help you understand factorization, divisibility, and number structure.

---

## 4. Composite vs primitive

| Kind               | Meaning                               |
|--------------------|----------------------------------------|
| Composite value    | multiple data elements (programming)   |
| Composite number   | integer ≥ 2 with non‑prime factorization |
| Primitive value    | single data element                    |

---

## See also

- **glossary/array.md**  
- **glossary/dynamic-array.md**  
- **notes/07-dynamic-arrays.md**  
- **glossary/prime.md**
