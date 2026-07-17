# Invariant

An **invariant** is a truth that must hold **always**:

- before a function runs  
- after a function runs  
- and at every visible state in between  

An invariant describes a condition that must **never be broken**.  
It defines the **ongoing truth** of an object or system.

If an invariant is violated, the system is in an invalid state and must ABEND.

---

## 1. What an invariant is

An invariant states:

- what must always be true  
- what must never be violated  
- what defines the valid structure of the object or system  

Example:

```d
class Account
{
    invariant (balance >= 0);

    void deposit (double amount)
    {
        balance = balance + amount;
    }

    void withdraw (double amount)
    {
        balance = balance - amount;
    }
}
```

The invariant `balance >= 0` must hold:

- before `deposit`  
- after `deposit`  
- before `withdraw`  
- after `withdraw`  

If any operation breaks the invariant, the system must ABEND.

---

## 2. Purpose of invariants

Invariants exist to:

- define the legal state of an object  
- prevent corruption  
- ensure structural correctness  
- eliminate hidden assumptions  
- simplify reasoning  
- guarantee consistency  

An invariant is a **permanent truth**.

---

## 3. Who is responsible for invariants

Responsibility is shared:

### Client (caller)
The client must call functions only when preconditions are met.  
If the client violates a precondition, the invariant may break — and the client is at fault.

### Supplier (function implementing the feature)
The supplier must ensure that every function:

- begins in a state where the invariant holds  
- ends in a state where the invariant holds  
- does not violate the invariant internally  

If the supplier violates the invariant, the supplier is at fault.

### Everyone
Any code that manipulates the object must preserve the invariant.

---

## 4. Invariants and correctness

Invariants enforce correctness by:

- defining the legal shape of the object  
- preventing invalid states  
- ensuring consistency across operations  
- eliminating ambiguity  
- simplifying verification  

An object with clear invariants is easier to reason about.

---

## 5. Invariants vs preconditions vs postconditions

### Precondition  
Must be true **before** the function runs.  
Responsibility: **client**.

### Postcondition  
Must be true **after** the function completes.  
Responsibility: **supplier**.

### Invariant  
Must be true **always**.  
Responsibility: **everyone**.

Preconditions guard the entrance.  
Postconditions guard the exit.  
Invariants guard the structure.

---

## 6. Invariants in Design by Contract

Design by Contract uses invariants to define:

- the permanent truths of an object  
- the conditions that must never be violated  
- the structural correctness of the system  

A contract is broken when an invariant is violated.

Invariants allow both client and supplier to assume:

- the object is always in a valid state  
- operations begin and end in legal states  
- correctness is preserved across calls  

This eliminates defensive programming and clarifies responsibility.

---

## 7. When invariants must be used

Use invariants when:

- an object has structural rules  
- a system has permanent truths  
- correctness depends on consistent state  
- operations must preserve a stable condition  
- illegal states must be prevented  

Examples:

- balances must never be negative  
- trees must remain properly ordered  
- collections must maintain size constraints  
- identifiers must remain unique  
- normalized forms must remain valid  

If a truth must always hold, it is an invariant.

---

## 8. When invariants must not be used

Do **not** use invariants when:

- the truth is not permanent  
- the truth is only required at entry or exit (use pre/postconditions instead)  
- the truth is advisory rather than structural  
- the truth is optional or best‑effort  
- the truth is not required for correctness  

Invariants are for **permanent truths**, not temporary conditions.

---

## 9. Contracts and ABEND

Invariant violations are fatal:

- If a **precondition** fails → client fault → ABEND  
- If a **postcondition** fails → supplier fault → ABEND  
- If an **invariant** fails → system fault → ABEND  

Continuing execution in an invalid state is unsafe.

---

## 10. Summary

An **invariant**:

- must hold before and after every function  
- must hold at every visible state  
- defines the legal structure of an object  
- is preserved by both client and supplier  
- is monitored; violations cause ABEND  
- is part of Design by Contract  
- pairs with preconditions and postconditions  
- is essential for correctness‑first design  

Invariants define the **ongoing truth** of a system.

---

## See also

- glossary/precondition.md  
- glossary/postcondition.md  
- glossary/design-by-contract.md  
- glossary/correctness-first.md  
- glossary/function.md
