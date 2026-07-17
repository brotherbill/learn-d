# Dual Truth

**Dual Truth** occurs when a system holds **two different versions of the same fact** at the same time.  
This is a structural violation of **Single Source of Truth (SSOT)**.

Dual Truth guarantees:

- drift  
- inconsistency  
- reconciliation work  
- correctness failures  

Dual Truth belongs in the **Hall of Shame**.

---

## 1. How Dual Truth happens

Dual Truth appears whenever a system duplicates meaning.

Common causes:

- caching  
- replication  
- denormalized data  
- “performance optimizations”  
- stale snapshots  
- background refreshes  
- asynchronous updates  
- multiple systems “owning” the same fact  

Example:

- System A holds Truth 1  
- System B holds Truth 2  
- Time passes  
- Truth 1 and Truth 2 diverge  

This divergence is guaranteed.

---

## 2. Caching and Dual Truth

Caching is the industry’s favorite way to create Dual Truth.

During the caching period:

- the authoritative system holds **Truth 1**  
- the cache holds **Truth 2**  

These truths inevitably drift.

Caching trades correctness for performance.  
Such is the price of performance.

Caching is not a performance optimization.  
Caching is a correctness compromise.

---

## 3. Why Dual Truth is catastrophic

Dual Truth creates:

- inconsistent reads  
- stale data  
- nondeterministic behavior  
- race conditions  
- reconciliation departments  
- Heisenbugs  
- correctness failures  

Dual Truth destroys reliability.

---

## 4. The four SSOT failure modes

Dual Truth is the direct result of SSOT violations:

1. Multiple parts **know** the truth  
2. Multiple parts **capture** the truth  
3. Multiple parts **don’t trust** other parts  
4. Multiple parts **maintain** other system values (“performance”, “UX”, “turnaround time”)  

Dual Truth is the architectural consequence of these failures.

---

## 5. Meyer’s edict

> **If it is not correct, performance is irrelevant.**

Dual Truth produces incorrectness.  
Therefore, its performance benefits are irrelevant.

---

## 6. How to eliminate Dual Truth

Dual Truth disappears when:

- one authoritative source exists  
- no subsystem maintains its own version  
- caches are used only for presentation, never for truth  
- background refreshes do not duplicate meaning  
- systems trust the authoritative source  
- SSOT is enforced rigorously  

Correctness requires **one truth**, not two.

---

## 7. Summary

**Dual Truth**:

- is two conflicting versions of the same fact  
- is created by caching, replication, and “performance hacks”  
- guarantees drift and inconsistency  
- forces reconciliation work  
- violates SSOT  
- destroys correctness  
- belongs in the Hall of Shame  

Correct systems have **one truth**.  
Broken systems have **two**.

---

## See also

- glossary/single-source-of-truth.md  
- glossary/reconciliation-department.md  
- glossary/correctness-first.md  
- glossary/separation-of-concerns.md  
- glossary/side-effect.md  
- glossary/pure-function.md
