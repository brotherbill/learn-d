# Shenanigans

In D, **shenanigans** are language behaviors that allow developers to write code that *works*, but does **more than expected**, hides meaning, or behaves differently than it appears.

Shenanigans are not bugs.  
Shenanigans are **surprising behaviors** created by features that offer “free” convenience at the cost of correctness.

Shenanigans increase the **surface area of surprise**.

---

## 1. What causes shenanigans in D

Shenanigans arise when the language provides **extra behavior you did not ask for**:

- implicit conversions  
- operator overloading with non‑obvious semantics  
- UFCS chains that hide complexity  
- auto inference that infers too much  
- mixins that inject invisible code  
- alias this creating multiple identities  
- template instantiation that produces unexpected paths  
- implicit copying of structs  
- modern operators (like `=>`) that **do more than you expect**

### Simple code tends to do what you expect  
A direct function call, a clear type, a visible return — these behave exactly as written.

### Modern operators tend to do *more* than you expect  
Operators like `=>` introduce:

- hidden lambdas  
- hidden captures  
- hidden allocations  
- hidden type inference  
- hidden conversions  
- hidden lifetime implications

This **free behavior** is the root of shenanigans.

---

## 2. Effects of shenanigans

Shenanigans cause:

- **Dual Truth** — code says one thing, behavior says another  
- **Hidden behavior** — execution paths not visible in the source  
- **Ambiguous meaning** — developers cannot predict behavior  
- **Fragility** — small changes break unrelated parts  
- **Reduced correctness** — contracts become harder to enforce

Shenanigans make the system **hard to reason about**.

---

## 3. Costs of shenanigans

The cost of shenanigans is **exponential**:

- each hidden behavior interacts with all others  
- each implicit rule multiplies the state space  
- each surprise multiplies failure modes

Shenanigans create **combinatorial explosion**.

---

## 4. How to reduce the shenanigan surface

Reduce shenanigans by:

- eliminating implicit conversions  
- avoiding operator overloading except for true algebraic meaning  
- restricting UFCS chains  
- using explicit types instead of auto when correctness matters  
- avoiding mixins except for trivial boilerplate  
- avoiding alias this  
- avoiding template cleverness  
- avoiding modern operators (`=>`, overly clever lambdas) when clarity matters  
- preferring **simple code**, because simple code does what you expect

Shenanigans shrink when **everything is explicit**.

---

## 5. Summary

Shenanigans in D:

- arise from features that do more than expected  
- hide behavior  
- multiply failure modes  
- undermine correctness  
- must be minimized in correctness‑first design

Simplicity reduces shenanigans.  
Explicitness eliminates them.
