# Cheat Sheet — Dynamic Arrays

Quick review of Lesson 07.

---

## 1. What is a dynamic array?

A dynamic array is a **resizable list** of values.

It can:
- grow  
- shrink  
- store multiple items  
- let you access items by index  

Dynamic arrays are the first real data structure you learn.

---

## 2. Declaring a dynamic array

```d
int[] numbers;
string[] names;
```

This creates an empty dynamic array.

It has:
- no elements  
- no size  
- no meaningful contents  

---

## 3. Adding elements (`~=`)

Use the **append operator** to add items:

```d
int[] numbers;
numbers ~= 10;
numbers ~= 20;
numbers ~= 30;
```

Now the array contains:
```
[10, 20, 30]
```

Append always adds to the **end**.

---

## 4. Reading elements (indexing)

```d
int[] numbers;
numbers ~= 5;
numbers ~= 7;

writeln ("First: ",  numbers[0]);
writeln ("Second: ", numbers[1]);
```

Output:
```
First: 5
Second: 7
```

Indexing starts at **0**.

---

## 5. Changing elements

```d
int[] numbers;
numbers ~= 3;
numbers ~= 8;

numbers[1] = 100;   // change second element
```

Array becomes:
```
[3, 100]
```

---

## 6. Common beginner mistakes

### Accessing an index that does not exist
```d
int[] a;
a ~= 42;
writeln (a[1]);   // error: only index 0 exists
```

### Forgetting that arrays start empty
```d
int[] a;
writeln (a[0]);   // error: no elements yet
```

### Mixing types
```d
int[] a;
a ~= "hello";     // error: wrong type
```

### Expecting append to overwrite
```d
int[] a;
a ~= 1;
a ~= 2;           // adds, does not replace
```

---

## 7. Hydratable example

Path:
```
exercises/01-lessons/07-dynamic-arrays/basic/app.d
```

Example:
```d
int[] scores;

scores ~= 10;
scores ~= 20;
scores ~= 30;

writeln ("First score: ",  scores[0]);
writeln ("Second score: ", scores[1]);
writeln ("Third score: ",  scores[2]);
```

---

## 8. Summary

- Dynamic arrays are resizable lists  
- Declare with `type[] name`  
- Append with `~=`  
- Indexing starts at 0  
- You can read and change elements  
- Arrays start empty  
- Out‑of‑bounds access is an error  

Dynamic arrays are the foundation of storing multiple values in D.
