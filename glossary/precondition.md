# Precondition

A **precondition** is a requirement that **must be true before** a function is called.  
It describes what the **caller (client)** must guarantee so the **function (supplier)** can operate correctly.

A precondition is part of the function’s **contract**.  
If the precondition is not met, the supplier’s behavior is **undefined**.

A precondition protects the supplier from invalid input.  
A precondition assigns responsibility to the client.

---

## 1. What a precondition is

A precondition states:

- what must be true  
- what must be valid  
- what must be provided  
- what must be satisfied  

**before** the supplier begins execution.

Example:

```d
void setAge(int age)
    in (age >= 0)
{
    this.age = age;
}
```

The precondition requires `age >= 0`.  
If the caller violates this, the supplier is not obligated to behave correctly.

---

## 2. The five rules of preconditions

### 1. Preconditions announce client responsibility  
A precondition explicitly tells the **caller**:  
**“You must honor this requirement.”**  
The client is responsible for ensuring the precondition is true.

### 2. Preconditions must be accessible to clients  
Clients must be able to **see**, **read**, and **understand** all preconditions.  
Hidden preconditions violate the contract.

### 3. Preconditions are monitored; failure results in ABEND  
If a precondition is violated, the system must **abort immediately**.  
Execution cannot continue in an invalid state.  
ABEND is the correct response.

### 4. Precondition failure is blamed on the client  
If a precondition is violated, the **caller** is at fault.  
The supplier is not responsible for handling invalid input.  
The client broke the contract.

### 5. Once declared, the supplier must not check the precondition  
After declaring a precondition, the supplier **assumes it is true**.  
The supplier must not verify it.  
The supplier must not defend against invalid input.  
The supplier proceeds under the assumption that the client honored the contract.

---

## 3. Preconditions and correctness

Preconditions enforce correctness by:

- rejecting invalid input  
- preventing impossible states  
- eliminating ambiguity  
- clarifying intent  
- reducing defensive programming  
- simplifying supplier logic  

A function with clear preconditions is easier to reason about.

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

## 5. Preconditions in Design by Contract

Design by Contract uses preconditions to define:

- valid inputs  
- valid states  
- valid assumptions  

A contract is broken when a precondition is violated.

Preconditions allow the supplier to assume:

- parameters are valid  
- state is consistent  
- inputs are meaningful  

This eliminates defensive programming and clarifies responsibility.

---

## 6. When preconditions must be used

Use preconditions when:

- invalid input would break correctness  
- the function cannot proceed meaningfully  
- the function requires a specific state  
- the function assumes a valid domain  
- the function depends on non‑null, non‑empty, or non‑negative values  

Preconditions are essential for correctness‑first design.

---

## 7. When preconditions must not be used

Do **not** use preconditions when:

- the function is meant to validate input  
- the function is meant to sanitize or normalize data  
- the function is meant to handle arbitrary values  
- the function is meant to be defensive  

Preconditions are not error‑handling.  
Preconditions are not validation logic.  
Preconditions are not filters for user input.

Preconditions are **contracts**, not **guards**.

---

## 8. Responsibility and benefit

A precondition is:

### 1. The responsibility of the client (caller)  
The caller must ensure the precondition is true.  
The caller is blamed for violations.

### 2. The benefit to the supplier (function)  
The supplier must assume correctness.  
The supplier must omit defensive checks.  
The supplier must write simpler, cleaner, more correct code.

---

## 9. Summary

A **precondition**:

- must be true before a function runs  
- is responsibility of the client (caller)  
- defines valid input  
- simplifies supplier logic  
- eliminates defensive programming  
- is monitored; violations cause ABEND  
- assigns blame to the client  
- must not be checked by the supplier  
- is part of Design by Contract  
- pairs with postconditions and invariants  
- is essential for correctness‑first design  

Preconditions define the **starting truth** of a function.

---

## See also

- glossary/postcondition.md  
- glossary/invariant.md  
- glossary/design-by-contract.md  
- glossary/function.md  
- glossary/correctness-first.md
