# Mischief

In D, **mischief** is smaller‑scale trouble: code that is technically correct, but **invites mistakes**, **encourages ambiguity**, or **creates traps** for future developers.

Mischief is not structural like shenanigans.  
Mischief is **local trouble** caused by cleverness.

---

## 1. What causes mischief in D

Mischief arises from:

- overly clever one‑liners  
- nested UFCS chains  
- silent default parameters  
- shadowed variables  
- implicit returns  
- overuse of auto  
- anonymous lambdas with hidden captures  
- modern operators (like `=>`) used casually

### Simple code tends to do what you expect  
A clear function call is predictable.

### Clever code tends to do *more* than you expect  
Operators like `=>` introduce hidden behavior that looks harmless but isn’t.

This “free behavior” is mischief’s fuel.

---

## 2. Effects of mischief

Mischief causes:

- confusion  
- ambiguity  
- local fragility  
- reduced readability  
- accidental complexity  
- small surprises that accumulate into shenanigans

Mischief is the gateway to shenanigans.

---

## 3. Costs of mischief

The cost of mischief is:

- **linear at first** — one clever line is harmless  
- **exponential later** — ten clever lines interact and create traps

Mischief scales badly.

---

## 4. How to eliminate mischief

Eliminate mischief by:

- writing explicit code  
- avoiding nested UFCS  
- avoiding shadowing  
- using explicit returns  
- using explicit types  
- avoiding hidden captures  
- avoiding modern operators (`=>`) when clarity matters  
- preferring **simple code**, because simple code does what you expect

Mischief disappears when **intent is visible**.

---

## 5. Summary

Mischief in D:

- is small‑scale trouble  
- arises from cleverness or ambiguity  
- reduces clarity  
- increases fragility  
- scales into shenanigans  
- must be eliminated early

Mischief is prevented by **clarity of intent**.
