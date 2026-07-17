# Range (D Language)

A **range** in D is a lightweight, iterable object that produces values **one at a time**.  
Ranges are the foundation of looping, stepping, and processing sequences in D.

A range is not an array.  
A range does not store all its values.  
A range only knows **how to produce the next value**.

Ranges make iteration simple, predictable, and memory‑efficient.

---

## 1. What makes something a range?

In D, a type is a **range** if it provides three operations:

- **front** → the current value  
- **popFront** → move to the next value  
- **empty** → true when the range is finished  

Example idea:

```
front     → 1
popFront  → move to the next number in the sequence (1 + 1 = 2)
empty     → false
```

After calling `popFront`, the range advances:

```
front     → 2
popFront  → move to the next number (2 + 1 = 3)
empty     → false
```

And again:

```
front     → 3
popFront  → move to the next number (3 + 1 = 4)
empty     → false
```

When the range reaches the end value (excluded), `empty` becomes true.

Ranges behave like “value streams.”

---

## 2. Numeric ranges (`start .. end`)

D has a built‑in syntax for creating a numeric range:

```
start .. end
```

This produces a sequence of integers beginning at **start** and stopping **just before** **end**.

Example:
```
1 .. 4
```

This range produces:
```
1, 2, 3
```

Important rules:

- The **start** value is included.  
- The **end** value is excluded.  
- The range steps by **1** each time.  
- The range is **deterministic** — it always produces the same sequence.

More examples:
```
0 .. 3   → 0, 1, 2
2 .. 7   → 2, 3, 4, 5, 6
5 .. 6   → 5
5 .. 5   → (empty range)
```

Numeric ranges are perfect for loops.

---

## 3. Ranges in loops

Ranges work naturally with `foreach`:

```d
foreach (i; 1 .. 4)
{
    writeln(i);
}
```

This prints:
```
1
2
3
```

The loop stops when the range becomes **empty**.

---

## 4. Slice ranges (`int[]` as a range)

Dynamic arrays in D are also **ranges** when used as slices.

Example:
```d
int[] a = [10, 20, 30];   // dynamic array
int[] r = a[];            // r is a slice, and slices are ranges
```

A slice is:

- a pointer to the first element  
- a length  
- not a copy  
- not a new array  
- a **view** into the same data  
- and it satisfies the range interface

So `r` behaves like a range:

```d
writeln(r.front);   // 10
r.popFront();

writeln(r.front);   // 20
r.popFront();

writeln(r.front);   // 30
r.popFront();

writeln(r.empty);   // true
```

Slices let you iterate through arrays without copying them.

---

## 5. Ranges are deterministic

Numeric ranges and slice ranges are **fully deterministic**:

- same start  
- same end  
- same stepping  
- same values  
- same order  

Example:
```d
foreach (i; 3 .. 7)
```

This always produces:
```
3, 4, 5, 6
```

Ranges never change their behavior unless you change the range itself.

This makes ranges ideal for teaching correctness and predictable iteration.

---

## 6. Ranges vs arrays

| Concept | Array | Range |
|--------|-------|--------|
| Stores values | Yes | No |
| Memory use | Can be large | Very small |
| Access | Random access | One value at a time |
| Best for | Data storage | Iteration |

Example:

```d
int[] a = [10, 20, 30];   // array
int[] r = a[];            // slice range over the array
```

The range walks through the array without copying it.

---

## 7. Why ranges matter

Ranges are essential for:

- looping  
- stepping through numbers  
- processing arrays  
- reading values one at a time  
- writing efficient code  
- avoiding unnecessary memory use  

Ranges are one of the most important ideas in D.

They make iteration simple, predictable, and safe.

---

## See also

- glossary/loop.md  
- glossary/iteration.md  
- glossary/deterministic.md  
- notes/06-loops.md
