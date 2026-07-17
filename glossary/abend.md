# ABEND

An **ABEND** (abnormal end) is a **forced, immediate termination** of execution because the system has entered an **invalid or undefined state**.

ABEND is **draconian** by design.

An ABEND does **not** merely stop a function.  
An ABEND does **not** merely stop a process.  
An ABEND brings down the **entire system**, including a web server, service host, or runtime environment.

ABEND is the correct response when correctness can no longer be guaranteed.

---

## 1. What ABEND means

ABEND means:

- a contract was violated  
- an invariant was broken  
- a precondition or postcondition failed  
- the system has entered **undefined behavior (UB)**  
- correctness cannot be restored by continuing  
- execution must halt immediately  
- investigation is required before resuming  

ABEND is the system’s way of saying:

> **“Stop. Something impossible just happened.”**

---

## 2. Why ABEND is draconian

ABEND is intentionally severe because:

- UB is contagious  
- UB spreads corruption  
- UB invalidates all assumptions  
- UB destroys correctness guarantees  
- UB makes further execution unsafe  
- UB cannot be “handled” or “recovered” safely  

Continuing after UB is worse than stopping.

ABEND prevents:

- silent corruption  
- inconsistent state  
- dual truth  
- cascading failures  
- unpredictable behavior  
- incorrect results  

ABEND is a **correctness shield**.

---

## 3. ABEND and contracts

ABEND is triggered when a contract is broken:

### Precondition failure  
Client fault → ABEND  
The caller violated the contract.

### Postcondition failure  
Supplier fault → ABEND  
The function failed to deliver promised truth.

### Invariant failure  
System fault → ABEND  
The object or system entered an illegal state.

ABEND is the enforcement mechanism of Design by Contract.

---

## 4. ABEND and undefined behavior (UB)

ABEND is the system’s response to UB.

UB means:

- the system’s state is no longer trustworthy  
- assumptions are invalid  
- correctness cannot be proven  
- future behavior is unpredictable  
- continuing execution is unsafe  

ABEND is required because UB cannot be ignored.

ABEND forces investigation:

- What contract was violated?  
- What invariant broke?  
- What truth failed to hold?  
- What assumption was false?  
- What code path should never have been reached?  

ABEND is not an error.  
ABEND is a **diagnostic event**.

---

## 5. ABEND vs exceptions

ABEND is not an exception.

Exceptions:

- represent expected error conditions  
- are part of normal control flow  
- allow recovery  
- preserve correctness  

ABEND:

- represents impossible conditions  
- indicates UB  
- forbids recovery  
- halts execution  
- demands investigation  

Exceptions are for **errors**.  
ABEND is for **violations of truth**.

---

## 6. When ABEND must be used

ABEND must be used when:

- a contract is violated  
- an invariant is broken  
- correctness cannot be guaranteed  
- the system enters UB  
- continuing execution risks corruption  
- the system must stop to preserve truth  

ABEND is mandatory in correctness‑first systems.

---

## 7. When ABEND must not be used

Do **not** use ABEND for:

- normal errors  
- user mistakes  
- recoverable conditions  
- expected failures  
- invalid input that can be validated  
- domain errors that can be handled  

ABEND is not error handling.  
ABEND is correctness enforcement.

---

## 8. Summary

An **ABEND**:

- is a forced, immediate termination  
- is draconian by design  
- indicates undefined behavior  
- enforces correctness  
- prevents corruption  
- demands investigation  
- is triggered by contract violations  
- is essential in correctness‑first systems  

ABEND is the system’s declaration that **truth has been broken**.

---

## See also

- glossary/precondition.md  
- glossary/postcondition.md  
- glossary/invariant.md  
- glossary/design-by-contract.md  
- glossary/undefined-behavior.md  
- glossary/correctness-first.md
