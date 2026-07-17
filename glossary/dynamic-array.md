# Dynamic Array

A **dynamic array** is a resizable list of values.  
It can grow or shrink while the program runs.

Dynamic arrays are one of the most important composite types in D.

Example:
```d
int[] numbers;
numbers ~= 10;
numbers ~= 20;
```

Result:
```
[10, 20]
```

---

## 1. Structure

A dynamic array has two parts:

- **ptr** → where the elements live  
- **length** → how many elements it currently holds  

The length changes automatically when you append or slice.

---

## 2. Appending

Use the append operator `~=` to add values:

```d
numbers ~= 30;
```

Now the array is:
```
[10, 20, 30]
```

Appending a single element increases the length by 1.  
Appending an array `a` increases the length by `a.length`.

See **glossary/append.md**.

---

## 3. Indexing

Dynamic arrays use **zero‑based indexing**:

```d
writeln (numbers[0]);   // first element
writeln (numbers[1]);   // second element
```

Accessing an index that does not exist causes an error.

---

## 4. Zero‑based vs. one‑based indexing

Indexing is how you refer to positions inside an array.

### Zero‑based indexing (used by D)

- first item has index **0**  
- second item has index **1**  
- fifth item has index **4**

Zero‑based indexing is common in systems programming because:

1. It is **faster and tighter** for low‑level memory operations.  
2. The index maps directly to an offset from the array’s starting address.  
3. Many languages (C, C++, D, Java, Python) follow this model.

### One‑based indexing (what toddlers learn)

- first item has index **1**  
- second item has index **2**  
- fifth item has index **5**

One‑based indexing is easier for beginners because:

- it matches natural counting  
- fewer off‑by‑one mistakes  
- the index equals the position number  
- “the fifth item has index 5” feels obvious

### Performance note

Adding or subtracting 1 on modern hardware is **unmeasurably fast**.  
The choice between zero‑based and one‑based indexing is about **design**, not speed.

### D’s choice

D uses **zero‑based indexing**.

---

## 5. Initialization

You can create a dynamic array with initial values:

```d
int[] a = [3, 4, 5];
```

Or start empty:

```d
int[] a;
```

Empty arrays have length 0.

---

## 6. Slicing

A slice is a **view** into part of a dynamic array:

```d
int[] a = [10, 20, 30, 40];
int[] mid = a[1 .. 3];   // [20, 30]
```

Slicing does not copy the data.  
It creates a window into the original array.

---

## 7. Composite type

A dynamic array is a **composite** because it holds multiple values.

Example:
```
[10, 20, 30]
```

This composite contains three integers.

See **glossary/composite.md**.

---

## 8. Why dynamic arrays matter

Dynamic arrays let your program:

- store collections  
- grow lists as needed  
- process sequences  
- handle input of unknown size  
- build real‑world data structures  

They are the first major composite type in Learn‑D.

---

## See also

- **notes/07-dynamic-arrays.md**  
- **glossary/array.md**  
- **glossary/append.md**  
- **glossary/index.md**
