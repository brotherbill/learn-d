# Design by Contract

**Design by Contract (DbC)** is a correctness discipline where software components interact through **explicit contracts**.  
A contract defines:

- what the **client (caller)** must guarantee  
- what the **supplier (function implementing the feature)** must guarantee  
- what truths must always hold  

DbC is built on three pillars:

1. **Preconditions** — client responsibilities  
2. **Postconditions** — supplier responsibilities  
3. **Invariants** — truths that must always hold  

A contract is broken when any of these are violated.

---

## 1. Purpose of Design by Contract

Design by Contract exists to:

- make correctness explicit  
- divide responsibility cleanly  
- eliminate defensive programming  
- prevent ambiguity  
- ensure reliable collaboration  
- define truth at entry, exit, and throughout execution  

DbC is a **correctness‑first architecture**.

---

## 2. Clients and suppliers

DbC distinguishes two roles:

### Client (caller)
The client **invokes** the function.  
The client must satisfy the **preconditions**.

### Supplier (function implementing the feature)
The supplier **executes** the function.  
The supplier must satisfy the **postconditions** and preserve **invariants**.

Responsibility is divided cleanly:

- **Client is responsible for preconditions.**  
- **Supplier is responsible for postconditions.**  
- **Everyone is responsible for invariants.**

---

## 3. Preconditions

A **precondition** is a requirement that must be true **before** the function runs.

A precondition:

- announces client responsibility  
- must be visible to the client  
- is monitored; violation causes ABEND  
- failure is blamed on the client  
- must not be checked by the supplier once declared  

Preconditions define the **starting truth** of a function.

See `precondition.md`.

---

## 4. Postconditions

A **postcondition** is a requirement that must be true **after** the function completes.

A postcondition:

- announces supplier responsibility  
- guarantees the promised result  
- defines the truth at completion  
- failure is blamed on the supplier  
- must be ensured by the supplier  

Postconditions define the **ending truth** of a function.

See `postcondition.md`.

---

## 5. Invariants

An **invariant** is a truth that must hold:

- before the function runs  
- after the function runs  
- and at every visible state in between  

Invariants define the **ongoing truth** of an object or system.

See `invariant.md`.

---

## 6. Why Design by Contract matters

DbC eliminates:

- defensive programming  
- ambiguous behavior  
- hidden assumptions  
- unclear responsibilities  
- correctness drift  
- accidental complexity  

DbC enables:

- predictable behavior  
- clear interfaces  
- reliable collaboration  
- simpler implementations  
- correctness‑first design  
- meaningful guarantees  

DbC makes correctness **structural**, not accidental.

---

## 7. Contracts and ABEND

A contract violation is a **fatal error**.

- If a **precondition** fails → client fault → ABEND  
- If a **postcondition** fails → supplier fault → ABEND  
- If an **invariant** fails → system fault → ABEND  

ABEND is required because continuing execution in a broken contract state is unsafe.

DbC does not tolerate partial correctness.

---

## 8. Contracts and implementation

DbC separates **interface truth** from **implementation detail**.

Contracts describe:

- required truths  
- guaranteed truths  
- perpetual truths  

Implementation describes:

- how the supplier achieves those truths  

Contracts are about **correctness**, not mechanics.

---

## 9. When to use Design by Contract

Use DbC when:

- correctness matters  
- functions have meaningful guarantees  
- state transitions must be valid  
- invariants must be preserved  
- collaboration must be reliable  
- ambiguity must be eliminated  

DbC is essential for correctness‑first systems.

---

## 10. When not to use Design by Contract

DbC is not needed when:

- the function has **no truth to guarantee**  
- the function has **no contractual meaning**  
- the function’s behavior is intentionally unspecified  
- the function performs best‑effort or advisory work  
- the function’s output is irrelevant to correctness  

DbC is about **truth**, not triviality.

---

## 11. Summary

**Design by Contract**:

- divides responsibility between client and supplier  
- uses preconditions, postconditions, and invariants  
- defines truth at entry, exit, and throughout execution  
- eliminates defensive programming  
- enforces correctness structurally  
- assigns blame correctly  
- requires ABEND on violation  
- is essential for correctness‑first design  

DbC is the architecture of **explicit truth**.

---

## See also

- glossary/precondition.md  
- glossary/postcondition.md  
- glossary/invariant.md  
- glossary/correctness-first.md  
- glossary/function.md
