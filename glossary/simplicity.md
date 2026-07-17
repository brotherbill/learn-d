# Simplicity

**Simplicity is the antidote to complexity.**  
Simplicity is the force that makes correctness possible, systems predictable, and development sustainable.

Simplicity is not minimalism.  
Simplicity is **clarity of truth**.

Simplicity is the developer’s greatest ally.

---

## 1. What simplicity is

Simplicity is:

- a small number of moving parts  
- a small number of interactions  
- a small number of states  
- a small number of assumptions  
- a small number of responsibilities  

Simplicity is not “less code.”  
Simplicity is **less entanglement**.

Simplicity is the property that allows a system to be:

- understood  
- reasoned about  
- verified  
- trusted  

Simplicity is the **structural foundation of correctness**.

---

## 2. Historical truth: when simplicity was mandatory

In the era of the **IBM System/360** (1960s):

- hardware had a **short mean time before failure**  
- software had to be **airtight**  
- constructs were **simple, explicit, and predictable**  
- code **did exactly what it looked like**  
- developers could reason about every instruction  
- correctness was not optional — it was survival

Old‑school constructs “just worked” because:

- nothing was implicit  
- nothing was magical  
- nothing was surprising  
- nothing did “extra work” behind your back

We must return to this mindset —  
**high‑level languages with low‑surprise behavior.**

If you need a **bootcamp** to learn a feature,  
that feature may not be worth the trouble —  
especially if it comes packaged with behavior you **didn’t ask for** and **didn’t expect**.

---

## 3. What causes simplicity

Simplicity is caused by:

- **Single Source of Truth (SSOT)**  
  One meaning, one place.

- **Explicit contracts**  
  Preconditions, postconditions, invariants.

- **Pure functions**  
  No side effects, no hidden state.

- **Clear domains**  
  Functions accept only legal input.

- **Small interfaces**  
  Fewer responsibilities → fewer interactions.

- **Immutable data**  
  Fewer states → fewer transitions.

- **Separation of concerns**  
  Each component does one thing.

- **Explicit behavior**  
  Nothing implicit, nothing magical.

Simplicity is not accidental.  
Simplicity is engineered.

---

## 4. Modern complexity: “free behavior” that does more than you expect

Modern languages introduce constructs that **do more than you expect**:

- delegates  
- closures  
- lambdas  
- default parameters  
- implicit conversions  
- implicit allocations  
- implicit captures  
- implicit type inference  
- operators like `=>` that expand into hidden lambdas  
- **async/await** (C#, JavaScript, Python, etc.)

These features create **free behavior**:

- invisible control flow  
- invisible scheduling  
- invisible state machines  
- invisible lifetime rules  
- invisible captures  
- invisible allocations  
- invisible conversions  
- invisible semantics

### Why async/await is dangerous  
Async/await looks simple, but it:

- rewrites your function into a hidden state machine  
- changes execution order  
- changes stack behavior  
- changes error propagation  
- changes lifetime semantics  
- introduces concurrency you did not ask for  
- creates behavior you did not expect

Async/await is the **poster child** of modern “free behavior.”

### Simple code tends to do exactly what you expect  
A direct function call is predictable.

### Modern constructs tend to do more than you expect  
This “free behavior” is the root of shenanigans.

---

## 5. Effects of simplicity

Simplicity produces:

- **Predictability**  
  The system behaves the same everywhere.

- **Correctness**  
  Truth is easy to maintain.

- **Reliability**  
  Fewer interactions → fewer failure modes.

- **Speed of development**  
  Developers can reason locally.

- **Ease of maintenance**  
  Future changes are safe.

- **Low cognitive load**  
  The system fits in a developer’s head.

- **High confidence**  
  The system can be trusted.

Simplicity makes correctness **cheap**.

---

## 6. Costs of simplicity (linear or exponential?)

The benefits of simplicity are **exponential**, not linear.

Why?

- Every reduction in interactions reduces the state space.  
- Every reduction in assumptions reduces failure modes.  
- Every reduction in responsibilities reduces entanglement.  
- Every reduction in side effects reduces nondeterminism.

If complexity grows exponentially, simplicity reduces cost **exponentially**.

Simplicity is not a small improvement.  
Simplicity is a **force multiplier**.

---

## 7. How to achieve simplicity

Simplicity is achieved by **discipline**, not cleverness.

Achieve simplicity by:

- **Eliminating Dual Truth**  
  One truth, one place.

- **Declaring contracts**  
  Preconditions, postconditions, invariants.

- **Restricting domains**  
  Functions accept only legal input.

- **Using pure functions**  
  No side effects.

- **Making behavior explicit**  
  No hidden rules.

- **Reducing dependencies**  
  Every dependency is a potential failure.

- **Favoring immutability**  
  Stable data → stable reasoning.

- **Avoiding modern constructs that do more than you expect**  
  - avoid delegates  
  - avoid closures  
  - avoid lambdas  
  - avoid default parameters  
  - avoid implicit behavior  
  - avoid operators like `=>`  
  - **avoid async/await**, which rewrites your function into a hidden state machine

Use **simple constructs**, where you know exactly what the code does,  
and you know it does **nothing else**.

- **Designing for correctness first**  
  Performance follows correctness.

Simplicity is the result of **intentional constraints**.

---

## 8. Cost of getting simplicity right now vs later

### Getting simplicity right now  
Cost: **small**  
- Clean architecture  
- Clear contracts  
- Stable invariants  
- Predictable behavior  
- Cheap future changes  
- Low cognitive load  
- High correctness

### Getting simplicity right later  
Cost: **massive**  
- Removing complexity  
- Untangling dependencies  
- Rebuilding invariants  
- Eliminating dual truth  
- Fixing cascading failures  
- Relearning the system  
- Re‑establishing correctness

Simplicity deferred becomes **complexity multiplied**.

Every day simplicity is postponed, the cost of achieving it increases **exponentially**.

---

## 9. Summary

**Simplicity**:

- is clarity of truth  
- is engineered, not accidental  
- reduces interactions  
- reduces assumptions  
- reduces failure modes  
- increases correctness  
- increases predictability  
- increases maintainability  
- grows benefits exponentially  
- is far cheaper to achieve early  
- is essential for correctness‑first design  
- is the mindset of the System/360 era, applied to modern languages  
- is the antidote to “free behavior” and surprise features  
- is achieved by avoiding delegates, closures, lambdas, defaults, implicit behavior, `=>`, and async/await  
- is preserved by using constructs that do exactly what they appear to do — and nothing else

Simplicity is the **foundation** on which correctness stands.

---

## See also

- glossary/complexity.md  
- glossary/correctness-first.md  
- glossary/single-source-of-truth.md  
- glossary/dual-truth.md  
- glossary/precondition.md  
- glossary/postcondition.md  
- glossary/invariant.md
