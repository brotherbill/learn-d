# null

**null** means “no value,” “nothing,” or “not a real thing.”  
It is used in programming to represent the absence of a valid value.

In D, `null` is used for pointers, class references, and dynamic arrays to mean:

- no object  
- no array  
- no memory  
- no valid reference  

`null` is not a real value.  
It is the **absence** of a value.

---

## 1. What `null` means

`null` always means:

- unknown  
- missing  
- not assigned  
- not real  
- not valid  
- not pointing to anything  

It is a placeholder that says:  
**“There is supposed to be something here, but there isn’t.”**

---

## 2. Why `null` (and 0) are NEVER used as IDs

In programming, **0** and **null** are universally reserved to mean:

- **UNKNOWN**  
- **MISSING**  
- **NOT REAL**  
- **NOT ASSIGNED**  
- **NOT VALID**  

Because of this, **0 must never be used as a real ID**.

### Why?

If 0 were used as a real ID, you could never tell the difference between:

- “This ID is real and equals 0”  
- “This ID is missing or unknown”  

That ambiguity breaks programs.

### Correct rule

**Real IDs always start at 1.**  
ID 0 always means “no ID.”

This rule is universal across:

- databases  
- operating systems  
- file handles  
- network sockets  
- user IDs  
- process IDs  
- device IDs  
- game objects  
- internal program identifiers  

0 and null are never real IDs.

---

## 3. null vs zero

`null` and `0` are not the same, but they share the same conceptual meaning:

### `null`
- no object  
- no array  
- no pointer  
- no reference  
- not real  

### `0`
- numeric zero  
- but also used as “no ID”  
- used as “no index”  
- used as “no handle”  
- used as “no resource”  

Both represent **absence**, not presence.

---

## 4. Hoare’s Billion‑Dollar Mistake

`null` is famous because of a statement by **Sir Tony Hoare**, one of the most important computer scientists in history.

He introduced the idea of `null` references in 1965.  
Decades later, he called it:

> **“My billion‑dollar mistake.”**

Why?

Because `null` leads to:

- crashes  
- bugs  
- security vulnerabilities  
- unexpected failures  
- hard‑to‑debug errors  

All caused by accidentally using something that isn’t real.

Hoare regretted inventing `null` because it caused enormous cost and complexity across the entire software industry.

This is why modern languages try to avoid `null` or restrict it.

D still has `null`, but Learn‑D teaches you to use it carefully and correctly.

---

## 5. null in D

In D, `null` is used for:

- pointers  
- class references  
- interface references  
- dynamic arrays  
- associative arrays (when checking for missing keys)  

Examples:

```d
int*   p = null;   // p does not point to anything
string s = null;   // s is not a real string yet
Object o = null;   // no object assigned
```

A `null` array has:

- length 0  
- no memory  
- no elements  

It is not the same as an empty array `[]`, but both mean “no elements.”

---

## 6. Why null exists

`null` exists to make it clear when something is:

- not created  
- not assigned  
- not available  
- not valid  
- not ready  
- not real  

It is a safety marker that prevents accidental use of uninitialized data.

---

## 7. Summary

`null` means:

- no value  
- no object  
- no array  
- no reference  
- not real  

And **0 is never used as a real ID** because:

- 0 means unknown  
- 0 means missing  
- 0 means not assigned  
- 0 means not valid  

Real IDs always start at **1**.

Hoare called `null` his **billion‑dollar mistake** because it caused so many bugs and failures.

---

## See also

- glossary/array.md  
- glossary/ascii.md  
- glossary/character.md  
- glossary/device.md  
- glossary/unicode.md
