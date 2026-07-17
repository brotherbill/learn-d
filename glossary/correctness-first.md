# Correctness‑First

**Correctness‑First** is the principle that correctness is the highest priority in software design.  
Nothing outranks correctness.  
Nothing substitutes for correctness.  
Nothing excuses incorrectness.

This principle should be obvious — but the modern software industry treats correctness as optional, inconvenient, or something to “fix later.”

Correctness‑First restores the only sane foundation for building reliable systems.

---

## 1. Why this glossary entry exists

There should be no need for a term like “Correctness‑First.”  
Correctness should be assumed.

But the industry has normalized the opposite:

- correctness is “nice to have”  
- correctness is “too expensive”  
- correctness is “phase two”  
- correctness is “after launch”  
- correctness is “we’ll fix it when customers complain”  

Correctness has been pushed **down the priority list**, replaced by business slogans masquerading as engineering principles.

---

## 2. The industry’s real priority list (Hall of Shame)

These are the priorities that routinely outrank correctness:

### 1. First to market  
Ship now. Fix later.  
Correctness becomes a liability.

### 2. Fail fast  
Break things quickly.  
Correctness is treated as “slowing innovation.”

### 3. Deliver features fast  
Velocity over validity.  
Quantity over quality.

### 4. Meet deadlines, no matter what  
Correctness is sacrificed to calendars.

### 5. Dazzle customers with amazing UI graphics  
Hide the snake pits behind animations and gradients.  
Correctness is buried under spectacle.

These priorities create systems that look impressive but behave unpredictably.

---

## 3. What Correctness‑First actually means

Correctness‑First means:

- correctness is the top priority  
- correctness is non‑negotiable  
- correctness is not optional  
- correctness is not a “phase”  
- correctness is not a “nice to have”  
- correctness is not something you trade away for speed  

Correctness is the foundation.  
Everything else is built on top of it.

---

## 4. Meyer’s edict

> **If it is not correct, performance is irrelevant.**

This is the core of Correctness‑First.

Performance, features, deadlines, UI polish — none of these matter if the system is wrong.

A fast wrong answer is still wrong.  
A beautiful wrong interface is still wrong.  
A feature‑rich wrong system is still wrong.

Correctness is the prerequisite for everything else.

---

## 5. Correctness‑First and SSOT

Correctness‑First requires a **Single Source of Truth (SSOT)**.

If multiple parts of the system “know” the truth:

- correctness collapses  
- drift appears  
- reconciliation departments form  
- bugs multiply  
- trust evaporates  

Correctness‑First demands **one authoritative truth**, not many competing ones.

---

## 6. Correctness‑First and Separation of Concerns

Correctness‑First requires **Separation of Concerns (SoC)**.

If concerns are mixed:

- correctness becomes hard to verify  
- correctness becomes hard to reason about  
- correctness becomes hard to maintain  

Correctness‑First demands clarity of responsibility.

---

## 7. Correctness‑First and pure functions

Pure functions are correctness engines:

- deterministic  
- testable  
- predictable  
- isolated  
- trustworthy  

Correctness‑First encourages purity wherever possible.

---

## 8. Correctness‑First and attributes

Attributes (`pure`, `nothrow`, `@safe`, `@nogc`) enforce correctness guarantees at compile time.

Correctness‑First uses attributes to make correctness explicit and enforceable.

---

## 9. Correctness‑First as a cultural shift

Correctness‑First is not just a technical principle.  
It is a cultural correction.

It rejects:

- “move fast and break things”  
- “ship now, fix later”  
- “customers will find the bugs”  
- “we’ll patch it in production”  
- “correctness slows us down”  

Correctness‑First restores engineering discipline.

---

## 10. Summary

**Correctness‑First** means:

- correctness outranks all other priorities  
- correctness is non‑negotiable  
- correctness is the foundation of reliable systems  
- performance, features, deadlines, and UI do not matter if the system is wrong  
- SSOT, SoC, purity, and attributes exist to enforce correctness  
- the industry’s obsession with speed has buried correctness  
- correctness must be restored to its rightful place: first  

Correctness‑First is not optional.  
It is the only sane way to build software.

---

## See also

- glossary/single-source-of-truth.md  
- glossary/separation-of-concerns.md  
- glossary/pure-function.md  
- glossary/side-effect.md  
- glossary/attributes.md  
- glossary/function.md  
- glossary/function-signature.md
