# Array

An **array** is a container that holds multiple values of the same type.

Arrays let your program:
- store several items together  
- access items by index  
- change items  
- grow or shrink (dynamic arrays only)

D has two major kinds of arrays:

---

## 1. Dynamic array

A **dynamic array** can grow and shrink at runtime.

Example:
```d
int[] numbers;
numbers ~= 10;
numbers ~= 20;
```

This creates a resizable list:
```
[10, 20]
```

Dynamic arrays:
- start empty  
- use `~=` to append  
- use `[index]` to read or write  
- begin indexing at 0  

Dynamic arrays are introduced in **Lesson 07**.

---

## 2. Static array

A **static array** has a fixed size known at compile time.

Example:
```d
int[3] numbers = [1, 2, 3];
```

Static arrays:
- cannot grow or shrink  
- have a size baked into the type  
- are not used in beginner lessons  

Static arrays appear later in the course.

---

## 3. Indexing

Arrays use **zero‑based indexing**.

Example:
```d
writeln (numbers[0]);   // first element
writeln (numbers[1]);   // second element
```

Accessing an index that does not exist causes an error.

---

## 4. Type consistency

All elements in an array must have the same type.

Example:
```d
int[] a;
a ~= 5;        // ok
a ~= "hello";  // error: wrong type
```

---

## 5. Why arrays matter

Arrays are the first real data structure you learn.  
They let you store and manipulate multiple values, which is essential for:

- lists  
- collections  
- sequences  
- tables  
- buffers  
- real‑world data processing  

Arrays are the foundation for more advanced structures later in the course.

---

## See also

- **notes/07-dynamic-arrays.md**  
- **glossary/dynamic-array.md** (if you create one)  
- **glossary/index.md** (master glossary)
