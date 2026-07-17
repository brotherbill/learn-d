# Reconciliation Department

A **Reconciliation Department** is an organizational symptom of a deep architectural failure:  
the system has **multiple sources of truth**.

A reconciliation department exists solely because different parts of the organization each maintain their own version of the same facts.  
Their job is to reconcile conflicting truths.

This is real‑world evidence of a **Single Source of Truth (SSOT)** violation.

Reconciliation Departments belong in the **Hall of Shame**.

---

## 1. Why reconciliation departments exist

Reconciliation departments appear when:

- multiple systems store the same data  
- multiple teams maintain overlapping records  
- multiple processes compute the same values  
- multiple databases “own” the same facts  
- multiple subsystems do not trust each other  
- multiple caches, logs, or reports each “know” the truth  

When this happens, the organization must hire people to:

- compare values  
- resolve conflicts  
- determine which truth is correct  
- repair inconsistencies  
- re‑synchronize systems  

This is expensive, fragile, and unnecessary.

---

## 2. Reconciliation is proof of SSOT failure

A reconciliation department is not a feature.  
It is not a business requirement.  
It is not a normal part of operations.

It is **evidence** that the architecture is broken.

A healthy system has:

- one authoritative source of truth  
- zero duplication of facts  
- zero drift  
- zero reconciliation work  

If reconciliation is required, SSOT has failed.

---

## 3. The four SSOT failure modes

Reconciliation departments arise from the four classic SSOT failures:

### 1. Multiple parts *know* the truth  
Different systems store the same fact.

### 2. Multiple parts *capture* the truth  
Values are read once and stored for later use.

### 3. Multiple parts *don’t trust* other parts  
Subsystems re‑compute or re‑validate truths.

### 4. Multiple parts *maintain* other system values  
Often justified by:  
- “performance”  
- “faster turnaround”  
- “better user experience”  
- “avoiding expensive calls”  

These failures guarantee drift.  
Drift guarantees reconciliation work.

---

## 4. Real‑world example: Sendmail

In UNIX Sendmail, Meyer attempted to remove the sender’s email address.  
He discovered **23 different sections of code** that each “knew” where the sender’s email was stored.

There were **23 sources of truth**.

This is the textbook example of SSOT failure — and the kind of situation that creates reconciliation departments.

---

## 5. Meyer’s edict

> **If it is not correct, performance is irrelevant.**

Reconciliation departments often exist because someone duplicated truths “for performance”.  
This is a false optimization.

Correctness must come first.  
Performance can be improved later — safely — when SSOT is preserved.

---

## 6. Reconciliation departments are avoidable

Reconciliation departments disappear when:

- SSOT is enforced  
- each fact has one authoritative home  
- systems trust the authoritative source  
- no subsystem maintains its own version of the truth  
- caches are invalidated correctly  
- no “performance hacks” duplicate meaning  

The cure is architectural discipline, not more reconciliation staff.

---

## 7. Summary

A **Reconciliation Department** is:

- a symptom of SSOT failure  
- proof that multiple systems “know” the same truth  
- evidence of drift, duplication, and mistrust  
- expensive, fragile, and unnecessary  
- created by the four SSOT failure modes  
- eliminated by enforcing a Single Source of Truth  

Reconciliation departments belong in the **Hall of Shame**.  
They exist only when architecture has failed.

---

## See also

- glossary/single-source-of-truth.md  
- glossary/separation-of-concerns.md  
- glossary/pure-function.md  
- glossary/side-effect.md  
- glossary/function.md  
- glossary/function-signature.md  
- glossary/attributes.md
