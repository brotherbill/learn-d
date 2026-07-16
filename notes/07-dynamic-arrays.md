# 07 — Dynamic Arrays

This lesson introduces **dynamic arrays**, the most common kind of array in D.

A dynamic array is a **resizable sequence of values**.  
It grows and shrinks as needed.

We intentionally **defer fixed‑length arrays** because they behave differently enough that the more general dynamic arrays are easier to understand first.  
Dynamic arrays match beginner expectations, while fixed‑length arrays introduce additional rules about size, memory, and copying.  
Once the student masters dynamic arrays, fixed‑length arrays become easy to understand.

---

## 1. What is a dynamic array?

A dynamic array is a container that holds **zero or more values** of the same type.

Examples:
- an array of integers  
- an array of strings  
- an array of colors  
- an array of scores  

A dynamic array can:
- start empty  
- grow  
- shrink  
- store values  
- retrieve values  

It is the simplest and most flexible array type in D.

---

## 2. Declaring a dynamic array

A dynamic array uses the syntax:

```
int[] numbers;
```

This means:
- `numbers` is a dynamic array  
- it holds `int` values  
- it starts empty  

Example:
```
// exercises/01-lessons/07-dynamic-arrays/declare-empty/app.d
int[] numbers;
writeln ("Length = ", numbers.length);   // prints 0
```

---

## 3. Adding elements with `~=` (append)

The `~=` operator **appends** a value to the end of the array.

Example:
```
// exercises/01-lessons/07-dynamic-arrays/append-basic/app.d
int[] numbers;

numbers ~= 10;      // append 10
numbers ~= 20;      // append 20
numbers ~= 30;      // append 30

writeln (numbers);  // prints [10, 20, 30]
```

Each append grows the array by one element.

### Why `~=` instead of `~`
- `~=` appends **in place**  
- `~` creates a **new array**  
- `~=` is the correct operator for dynamic arrays  
- `~` is used for concatenation, not appending  

Beginners should always use `~=`.

---

## 4. Arrays grow automatically

Dynamic arrays resize themselves.

Example:
```
// exercises/01-lessons/07-dynamic-arrays/grow-auto/app.d
string[] words;

words ~= "apple";
words ~= "banana";
words ~= "cherry";

writeln (words.length);   // prints 3
```

You do not need to specify a size ahead of time.

---

## 5. Accessing elements

Use the index operator `[ ]` to access elements.

Example:
```
// exercises/01-lessons/07-dynamic-arrays/access-basic/app.d
int[] numbers;

numbers ~= 5;
numbers ~= 10;
numbers ~= 15;

writeln (numbers[0]);   // prints 5
writeln (numbers[1]);   // prints 10
writeln (numbers[2]);   // prints 15
```

### Important
Array indices start at **0**.

This is consistent with:
- loops  
- OFF‑BY‑1 behavior  
- fencepost reasoning  

---

## 6. Changing elements

You can assign to an element using its index.

Example:
```
// exercises/01-lessons/07-dynamic-arrays/modify-element/app.d
int[] numbers;

numbers ~= 1;
numbers ~= 2;
numbers ~= 3;

numbers[1] = 20;     // change the second element

writeln (numbers);   // prints [1, 20, 3]
```

---

## 7. Using arrays with loops

Dynamic arrays work naturally with `while` loops.

Example:
```
// exercises/01-lessons/07-dynamic-arrays/loop-array/app.d
int[] numbers;

numbers ~= 3;
numbers ~= 6;
numbers ~= 9;

int i = 0;

while (i < numbers.length)
{
    writeln ("Element ", i, ": ", numbers[i]);
    i = i + 1;
}
```

This prints:
```
Element 0: 3
Element 1: 6
Element 2: 9
```

This reinforces:
- initialization  
- predicate  
- increment  
- OFF‑BY‑1 awareness  

---

## 8. Arrays can be empty

A dynamic array can start empty and remain empty.

Example:
```
// exercises/01-lessons/07-dynamic-arrays/empty-array/app.d
string[] names;

if (names.length == 0)
{
    writeln ("No names yet.");
}
```

This is a **zero‑length container**, similar to a **zero‑iteration loop**.

---

## 9. `.length` semantics

`.length` gives the number of elements in the array.

Important rules:
- `.length` is always valid  
- `.length` is 0 for empty arrays  
- `.length` is **not** the last index  
- the last index is `.length - 1` (if length > 0)

Example:
```
int[] a;
a ~= 7;
a ~= 8;
a ~= 9;

a.length == 3
last index == 2
```

This prevents fencepost confusion.

---

## 10. Why fixed‑length arrays are deferred

Fixed‑length arrays behave differently:

- Their size is part of the type.  
- They cannot grow or shrink.  
- They require compile‑time length.  
- They interact differently with memory.  
- They introduce additional rules about copying and slicing.  

These differences create cognitive overhead.

Dynamic arrays:
- behave like normal containers  
- resize automatically  
- match beginner expectations  
- integrate cleanly with loops  
- avoid early exposure to low‑level details  

Once the student masters dynamic arrays, fixed‑length arrays become easy to understand.

---

## 11. Common beginner mistakes

### Mistake 1: Accessing out‑of‑bounds
```
// exercises/01-lessons/07-dynamic-arrays/mistake-1/app.d
int[] numbers;
numbers ~= 10;

writeln (numbers[1]);   // error: index 1 does not exist
```

### Mistake 2: Forgetting zero‑based indexing
```
// exercises/01-lessons/07-dynamic-arrays/mistake-2/app.d
int[] numbers;
numbers ~= 5;
numbers ~= 10;

writeln (numbers[2]);   // error: only indices 0 and 1 exist
```

### Mistake 3: Confusing length with last index
```
// exercises/01-lessons/07-dynamic-arrays/mistake-3/app.d
int[] numbers;
numbers ~= 7;
numbers ~= 8;
numbers ~= 9;

int last = numbers.length;     // last = 3
writeln (numbers[last]);       // error: last index is 2
```

This is a classic **fencepost error**.

---

## 12. Hydratable runnable examples

All examples in this lesson have hydratable project paths:

- `exercises/01-lessons/07-dynamic-arrays/declare-empty/app.d`  
- `exercises/01-lessons/07-dynamic-arrays/append-basic/app.d`  
- `exercises/01-lessons/07-dynamic-arrays/grow-auto/app.d`  
- `exercises/01-lessons/07-dynamic-arrays/access-basic/app.d`  
- `exercises/01-lessons/07-dynamic-arrays/modify-element/app.d`  
- `exercises/01-lessons/07-dynamic-arrays/loop-array/app.d`  
- `exercises/01-lessons/07-dynamic-arrays/empty-array/app.d`  
- `exercises/01-lessons/07-dynamic-arrays/mistake-1/app.d`  
- `exercises/01-lessons/07-dynamic-arrays/mistake-2/app.d`  
- `exercises/01-lessons/07-dynamic-arrays/mistake-3/app.d`  

The student can:
- run  
- debug  
- modify  
- experiment  

This is essential for learning how arrays behave.

---

## 13. Master example reference

The dashboard should link to:

```
master-examples/07-dynamic-arrays/app.d
```

This example demonstrates:
- declaring arrays  
- appending  
- accessing  
- modifying  
- looping  
- fencepost awareness  

---

## 14. Glossary additions

This lesson introduces several important terms:

- dynamic array  
- append (`~=`)  
- index  
- length  
- zero‑based indexing  
- out‑of‑bounds  
- fencepost error  

Each should have its own glossary entry.

---

## 15. Summary

- A dynamic array is a resizable sequence of values.  
- Arrays start empty and grow with `~=`.  
- Elements are accessed with `[ ]`.  
- Indices start at 0.  
- `.length` gives the number of elements, not the last index.  
- Loops work naturally with arrays.  
- Fixed‑length arrays are deferred until later.  
- Every example has a hydratable project.  

Dynamic arrays are the foundation of container programming in D.
