# Single Source of Truth

A **Single Source of Truth (SSOT)** is a design principle that states:

> Every piece of information in a system must have exactly one authoritative home.

If a value, rule, or piece of knowledge appears in more than one place, the system becomes fragile.  
If it appears in only one place, the system becomes stable.

SSOT is about eliminating duplication of meaning.

---

## 1. What SSOT means

A system has a Single Source of Truth when:

- each fact is defined once  
- every other part of the system refers to that definition  
- no fact is duplicated  
- no fact is re‑expressed in multiple places  
- no fact is “almost the same” somewhere else  

SSOT ensures that the system has **one authoritative definition** for each concern.

---

## 2. Why SSOT matters

When SSOT is violated:

- values drift out of sync  
- bugs appear unpredictably  
- behavior becomes inconsistent  
- debugging becomes harder  
- maintenance becomes painful  
- refactoring becomes dangerous  

When SSOT is respected:

- correctness increases  
- consistency is guaranteed  
- refactoring becomes safe  
- testing becomes simpler  
- architecture becomes cleaner  
- the system becomes easier to reason about  

SSOT is a cornerstone of correctness‑first design.

---

## 3. What breaks SSOT

SSOT is broken whenever **multiple places “know” the truth**.  
Here are the most common ways this happens.

### 1. Caching
Caching creates a **second copy** of a truth.

Example:

```d
auto cachedTotal = computeTotal();  // duplicate truth
```

If the original truth changes, the cached truth becomes stale.

Caching is useful, but it must be done carefully and invalidated correctly.

### 2. Capturing state for later use
Storing a value for later use creates **another source of truth**.

Example:

```d
auto lastKnownBalance = account.balance;  // second truth
```

If the real balance changes, the captured value becomes misleading.

### 3. Multiple systems “know” the truth
The worst SSOT violation is when **multiple subsystems** each store their own version of the truth.

Example:

- database stores the user’s email  
- cache stores the user’s email  
- session stores the user’s email  
- UI stores the user’s email  
- logs store the user’s email  

Now there are multiple “truths,” and they will drift.

### 4. Reconciliation Departments
In large organizations, entire **Reconciliation Departments** exist solely because multiple systems each maintain their own version of the truth.

Examples:

- Accounting has one balance.  
- Billing has another balance.  
- CRM has another balance.  
- Warehouse has another balance.  
- Shipping has another balance.  

The organization must hire people whose job is to **reconcile conflicting truths**.

Reconciliation Departments are real‑world evidence of SSOT failure.

### Classic counter‑example: Sendmail
In UNIX Sendmail, Meyer attempted to remove the sender’s email address.  
He discovered **23 different sections of code** that each “knew” where the sender’s email was stored.

There were **23 sources of truth**.

This is the textbook example of SSOT failure.

---

## 4. SSOT and Separation of Concerns

SSOT is tightly connected to **Separation of Concerns (SoC)**.

- SoC says: each concern should live in one place.  
- SSOT says: each *fact* should live in one place.

If SoC is the King of best practices, SSOT is the King’s right hand:

- SoC prevents mixing concerns.  
- SSOT prevents duplicating concerns.

If you get SoC right, SSOT becomes easy.  
If you get SoC wrong, SSOT becomes impossible.

---

## 5. SSOT and pure functions

Pure functions naturally support SSOT:

- they depend only on parameters  
- they do not read hidden state  
- they do not duplicate knowledge  
- they do not embed external facts  

A pure function expresses one truth:  
**the relationship between its parameters and its return value.**

This makes pure functions ideal building blocks for SSOT.

See glossary/pure-function.md.

---

## 6. SSOT and side effects

Side effects often violate SSOT because they:

- embed knowledge in multiple places  
- duplicate logic across commands  
- hide state changes  
- create multiple “truths” about the system  

Example of SSOT violation:

```d
counter++;        // truth about state here
save(counter);    // truth about state also here
```

Two places now “know” the truth about `counter`.  
This is fragile.

See glossary/side-effect.md.

---

## 7. SSOT and function signatures

A function signature is the **single authoritative source of truth** for how the function is called.

The signature defines:

- the parameter types  
- the return type  
- the calling expectations  

SSOT is violated not by “multiple functions doing the same thing,”  
but by **multiple descriptions** of the same signature.

Examples of SSOT violations:

- documentation that restates the signature incorrectly  
- comments that describe different parameter types  
- diagrams that show outdated return types  
- external systems assuming different calling conventions  

These create **drift**, where the truth in the signature and the truth in the documentation diverge.

The signature itself must remain the **one and only** source of truth for the function’s interface.

See glossary/function-signature.md.

---

## 8. SSOT and attributes

Attributes enforce SSOT for behavioral guarantees:

- `pure` is the single source of truth for purity  
- `nothrow` is the single source of truth for exception guarantees  
- `@safe` is the single source of truth for memory safety  
- `@nogc` is the single source of truth for GC usage  

Attributes make correctness explicit and centralized.

See glossary/attributes.md.

---

## 9. SSOT at larger scales

SSOT applies at every level:

### Functions
Each function should express one truth.

### Modules
Each module should own one area of knowledge.

### Packages
Each package should own one subsystem.

### Systems
Each system should own one domain.

SSOT scales from the smallest function to the largest architecture.

---

## 10. SSOT as a diagnostic tool

SSOT failures are structural. They occur when **multiple places hold, maintain, or assert the same truth**.

When diagnosing correctness problems, look for these patterns:

### 1. Multiple parts *know* the truth  
Different modules, subsystems, or functions each store the same fact.  
This guarantees drift and inconsistency.

### 2. Multiple parts *capture* the truth  
A value is read once and stored for later use.  
Captured truths become stale the moment the real truth changes.

### 3. Multiple parts *don’t trust* other parts  
Subsystems re‑compute, re‑validate, or re‑store truths because they do not trust the authoritative source.  
This creates parallel truths.

### 4. Multiple parts *maintain* other system values  
Often justified by:  
- “performance”  
- “faster turnaround”  
- “better user experience”  
- “avoiding expensive calls”  

These optimizations create **secondary truths** that inevitably drift from the real one.

### Dr. Bertrand Meyer’s edict  
> **If it is not correct, performance is irrelevant.**

Duplicating truths for performance is a false optimization.  
Correctness must come first.  
Performance can be improved later — and only safely — when SSOT is preserved.

SSOT failures are not about complexity or fogginess — they are about **multiple sources of truth**.  
Whenever correctness problems appear, check for these four failure modes first.

---

## 11. Summary

A **Single Source of Truth** means:

- each fact has one authoritative home  
- duplication is eliminated  
- correctness increases  
- consistency is guaranteed  
- refactoring becomes safe  
- debugging becomes easier  
- SoC becomes enforceable  
- purity becomes natural  
- attributes reinforce guarantees  
- SSOT breaks when multiple places “know” the truth  
- Reconciliation Departments are real‑world evidence of SSOT failure  

SSOT is one of the most important principles in software design.

---

## See also

- glossary/separation-of-concerns.md  
- glossary/pure-function.md  
- glossary/side-effect.md  
- glossary/function.md  
- glossary/function-signature.md  
- glossary/attributes.md  
- glossary/command.md  
- glossary/query.md  
- glossary/command-query-separation.md
