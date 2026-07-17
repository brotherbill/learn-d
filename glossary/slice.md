# Slice

A **slice** is a view into part of an array.  
A slice does not own memory.  
It simply points to a section of an existing array.

Example:
```d
int[] a = [10, 20, 30, 40, 50];
int[] s = a[1 .. 4];   // s = [20, 30, 40]
```

The slice `s` refers to elements 1, 2, and 3 of `a`.

Slices are powerful, but they have **two levels**:

1. **Simple and safe** — normal use  
2. **Precise and dangerous** — where correctness matters and Undefined Behavior (UB) is possible

---

## 1. Simple, safe slice usage

At the simple level, slices behave like safe subarrays.

### Creating a slice
```d
int[] s = a[2 .. 5];
```

### Using a slice
```d
writeln(s.length);
writeln(s[0]);
```

### Modifying through a slice
Changes affect the original array:
```d
s[0] = 999;   // modifies a[2]
```

### Slices track length
```d
writeln(s.length);   // number of elements in the slice
```

### Slices do bounds checking
```d
s[100];   // runtime error
```

This level is safe and easy.  
Benny can use slices like normal arrays.

---

## 2. The precise, dangerous level (where UB can occur)

Slices are **views**, not owners.  
They depend on the **original array’s memory** staying valid.

If the underlying memory becomes invalid, the slice becomes invalid too.

### 2.1. Slices can become dangling

Example:
```d
int[] s;

{
    int[] temp = [1, 2, 3];
    s = temp[0 .. $];   // slice into temp
}                       // temp goes out of scope

writeln(s[0]);          // UB — s points to freed memory
```

The slice `s` outlives the array it came from.  
This is **Undefined Behavior**.

### 2.2. Appending can reallocate

Appending to an array may move it to new memory.

If you have a slice pointing into that array, the slice may become invalid.

Example:
```d
int[] a = [1, 2, 3, 4];
int[] s = a[1 .. $];   // slice into a

a ~= 999;              // may reallocate a

writeln(s[0]);         // UB if reallocation happened
```

The slice `s` still points to the *old* memory.

### 2.3. Slices must obey bounds

This is safe:
```d
a[1 .. 4];
```

This is UB:
```d
a[1 .. 100];   // slice extends past array end
```

D does not check slice bounds at compile time.  
You must ensure correctness.

### 2.4. Slices do not protect against aliasing

Two slices may refer to overlapping memory:

```d
int[] a = [1, 2, 3, 4];
int[] x = a[0 .. 3];
int[] y = a[1 .. 4];
```

Modifying through one slice affects the other.  
This is safe, but correctness must be understood.

---

## 3. Summary: two levels of slice usage

### Safe level
- slicing arrays  
- reading and writing elements  
- using `.length`  
- bounds‑checked indexing  
- treating slices like subarrays  

### Dangerous level
- slices outliving their source  
- slices into temporary arrays  
- slices into GC memory that may move  
- slices into arrays that may reallocate  
- incorrect slice bounds  
- aliasing that breaks assumptions  

At the dangerous level, correctness requires precision.  
Mistakes can cause **Undefined Behavior**.

---

## 4. Why slices matter

Slices are essential for:

- efficient subarray views  
- avoiding copying  
- fast iteration  
- string processing  
- memory‑safe high‑level code  
- performance‑critical code when used correctly  

Slices are one of D’s most powerful features — safe when used simply, precise when used carefully.

---

## See also

- glossary/array.md  
- glossary/range.md  
- glossary/iteration.md  
- glossary/index.md
