# Append

To **append** means to add new elements to the **end** of a dynamic array.

D uses the append operator:

```
~=
```

This operator grows the array by increasing its length.

Example:
```d
int[] a;
a ~= 10;
a ~= 20;
```

Result:
```
[10, 20]
```

---

## 1. Appending a single element

Appending one value increases the array’s length by **1**:

```d
int[] a = [3, 4];
a ~= 5;        // now [3, 4, 5]
```

---

## 2. Appending another array

You can append an entire array:

```d
int[] a = [1, 2];
int[] b = [30, 40, 50];
a ~= b;        // now [1, 2, 30, 40, 50]
```

Appending an array increases the length by **b.length**.

---

## 3. Append is dynamic

Appending works only on **dynamic arrays**, because they can grow.

Fixed length arrays cannot change size:

```d
int[3] fixed = [1, 2, 3];
// fixed ~= 4;   // error: fixed length arrays cannot grow
```

See **glossary/dynamic-array.md**.

---

## 4. Append and memory

When you append:

- the array may need more space  
- D may allocate a larger block  
- the pointer may move  
- the length increases  

This is automatic.  
You do not manage memory yourself.

---

## 5. Append is O(1) *amortized*

Most appends are fast.  
Occasionally, the array grows and needs a new allocation.  
This is called **amortized O(1)** performance.

Beginners do not need to worry about this yet.

---

## 6. Why append matters

Append lets your program:

- build lists  
- collect input  
- grow sequences  
- store unknown amounts of data  
- construct real‑world structures  

Append is the main way dynamic arrays grow.

---

## See also

- **glossary/dynamic-array.md**  
- **glossary/array.md**  
- **glossary/index.md**
