# Postcondition

A **postcondition** is a requirement that **must be true after** a function finishes execution.  
It describes what the **supplier (the function implementing the feature)** guarantees to the **client (the caller)**.

A postcondition is part of the function’s **contract**.  
If the postcondition is not met, the supplier has violated the contract.

A postcondition protects the client from incorrect results.  
A postcondition assigns responsibility to the supplier.

---

## 1. What a postcondition is

A postcondition states:

- what must be true  
- what must be produced  
- what must be ensured  
- what must be satisfied  

**after** the supplier completes execution.

Example:

```d
int increment(int x)
    out (result == x + 1)
{
    return x + 1;
}
```

The postcondition guarantees that the result is exactly `x + 1`.  
If the supplier violates this, the supplier is at fault.

---

## 2. What postconditions are for

Postconditions:

- define the supplier’s responsibilities  
- guarantee correct results  
- ensure meaningful output  
- clarify what the function promises  
- eliminate ambiguity  
- make contracts explicit  

A postcondition is a **promise from the supplier**.

---

## 3. Postconditions and correctness

Postconditions enforce correctness by:

- guaranteeing valid output  
- preventing incorrect results  
- ensuring consistent behavior  
- clarifying expectations  
- simplifying client logic  

A function with clear postconditions is easier to reason about.

---

## 4. Preconditions vs postconditions vs invariants

### Precondition  
Must be true **before** the function runs.  
Responsibility: **client (caller)**.

### Postcondition  
Must be true **after** the function completes.  
Responsibility: **supplier (function)**.

### Invariant  
Must be true **always**, for the lifetime of the object or system.  
Responsibility: **everyone** who manipulates the object.

Preconditions guard the entrance.  
Postconditions guard the exit.  
Invariants guard the structure.

---

## 5. The supplier’s obligations

Once a postcondition is declared:

1. **The supplier must ensure it is met.**  
2. **The supplier must not violate the postcondition.**  
3. **The supplier may assume the precondition was honored.**  
4. **The supplier must guarantee the promised truth.**  
5. **Postcondition failure is blamed on the supplier.**

The supplier is responsible for correctness of the result.

---

## 6. Postconditions in Design by Contract

Design by Contract uses postconditions to define:

- valid results  
- valid output states  
- guarantees made by the supplier  

A contract is broken when a postcondition is violated.

Postconditions allow the client to assume:

- the result is correct  
- the state is updated properly  
- the function fulfilled its promise  

This eliminates defensive programming and clarifies responsibility.

---

## 7. When postconditions must be used

Use postconditions when:

- the function must guarantee a specific result  
- the function must update state correctly  
- the function must produce a defined truth  
- the client depends on correctness  
- the function defines a transformation or update  
- the function promises accuracy, precision, or validity  

Examples:

- A `sqrt(x)` function that guarantees **6 digits of accuracy**.  
- A `parseJson()` function that guarantees a correct parse tree.  
- A `currentBalance(id)` function that guarantees the returned balance matches the authoritative ledger.  
- A `normalize()` function that guarantees a valid normalized form.

If the function promises a truth, the postcondition must state that truth.

---

## 8. When postconditions must not be used

Postconditions must not be used when **there is no truth to guarantee**.

This is the only criterion.

Do **not** use postconditions when:

- the function does not promise anything  
- the function has no contractual output  
- the function’s behavior has no meaningful truth to assert  
- the function’s completion does not establish a guarantee  

Examples:

- A function that logs a message and returns nothing.  
- A function that increments an internal counter with no promised semantics.  
- A function that performs a best‑effort hint or advisory action.  
- A function whose output is intentionally unspecified or undefined.

Postconditions are not about triviality, observability, or implementation.  
Postconditions are about **guaranteed truth at completion**.

---

## 9. Responsibility and benefit

A postcondition is:

### 1. The responsibility of the supplier (function)  
The supplier must ensure the postcondition is true.  
The supplier is blamed for violations.

### 2. The benefit to the client (caller)  
The client may assume correctness.  
The client may omit defensive checks.  
oeThe client may rely on the supplier’s guarantees.

---

## 10. Summary

A **postcondition**:

- must be true after a function runs  
- is guaranteed by the supplier  
- defines the truth promised at completion  
- simplifies client logic  
- eliminates defensive programming  
- assigns blame to the supplier  
- is part of Design by Contract  
- pairs with preconditions and invariants  
- is essential for correctness‑first design  

Postconditions define the **ending truth** of a function.

---

## See also

- glossary/precondition.md  
- glossary/invariant.md  
- glossary/design-by-contract.md  
- glossary/function.md  
- glossary/correctness-first.md
