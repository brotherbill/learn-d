# Contiguous

**Contiguous** means “next to each other with no gaps.”  
In programming, data is *contiguous* when its elements are stored in order, one after another, with no unused space between them.

Contiguous data is simple, predictable, and fast to work with.

---

## 1. Contiguous arrays

A D **array** stores its elements contiguously in memory:

```
[ a ][ b ][ c ][ d ]
```

Each element is right next to the next one.

This means:

- indexing is fast  
- slicing is fast  
- iteration is fast  
- memory access is predictable  

Contiguous arrays allow the CPU to read data efficiently because the next element is exactly one step away in memory.

---

## 2. Contiguous ASCII letters

ASCII places letters in contiguous numeric ranges:

### Uppercase A–Z
```
65 66 67 ... 90
 A  B  C ...  Z
```

### Lowercase a–z
```
97 98 99 ... 122
 a  b  c ...   z
```

There are **no gaps** in these ranges.

This makes it easy to:

- check if a character is a letter  
- convert uppercase ↔ lowercase  
- sort text alphabetically  
- perform arithmetic on characters  

Contiguous letters are one of ASCII’s greatest strengths.

---

## 3. Contiguous ASCII digits

ASCII digits 0–9 are also contiguous:

```
48 49 50 ... 57
 0  1  2 ...  9
```

This makes it easy to:

- check if a character is a digit  
- convert a digit character to its numeric value  
- sort numeric text  
- write simple parsing code  

Again, the lack of gaps is what makes the math simple.

---

## 4. Why contiguous data is a good thing

Contiguous data is valuable because it makes computation **simple**, **fast**, and **predictable**.

### 4.1. Simple arithmetic

When values are contiguous, you can use arithmetic to move between them:

- `'A' + 1` → `'B'`  
- `'0' + 5` → `'5'`  
- `array[i + 1]` → next element  

No lookup tables.  
No special cases.

### 4.2. Fast memory access

Contiguous memory allows the CPU to:

- prefetch the next element  
- use cache lines efficiently  
- avoid pointer chasing  

This is why arrays are faster than linked lists.

### 4.3. Easy slicing

Contiguous arrays allow slices like:

```
arr[2 .. 5]
```

because the elements are physically next to each other.

### 4.4. Easy iteration

A loop can simply move forward through memory:

```
foreach (x; arr)
```

No jumps.  
No indirection.

### 4.5. Easy sorting

Contiguous numeric ranges (like ASCII letters and digits) make sorting trivial because the numeric order *is* the alphabetical or digit order.

---

## 5. Summary

Contiguous means:

- no gaps  
- predictable layout  
- simple arithmetic  
- fast access  
- easy slicing  
- easy iteration  

Arrays are contiguous.  
ASCII letters are contiguous.  
ASCII digits are contiguous.

Contiguity is one of the most important ideas in programming.

---

## See also

- glossary/array.md  
- glossary/ascii.md  
- glossary/unicode.md  
- glossary/digit.md  
- glossary/character.md
