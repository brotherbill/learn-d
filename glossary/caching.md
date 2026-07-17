# Caching

**Caching** is the practice of storing a copy of data so it can be retrieved faster than fetching the original source.  
Caching trades **freshness** for **speed**.

A cache is always a **copy**, never the truth.  
A cache is always **temporary**, never authoritative.

Caching is a performance technique.  
Caching is not a correctness technique.

---

## 1. What caching is

Caching creates a **secondary location** that holds previously computed or previously retrieved data.

Typical examples:

- storing database query results in memory  
- storing rendered UI fragments  
- storing computed values for reuse  
- storing network responses locally  
- storing file contents in RAM  

Caching reduces:

- latency  
- load  
- repeated computation  
- repeated I/O  

Caching increases:

- speed  
- responsiveness  
- throughput  

Caching is fundamentally a **duplication mechanism**.

---

## 2. What caching solves safely

Caching is safe when the cached data is **not truth**.

Caching is safe when the cached data is used for:

- **presentation** (UI rendering, formatting, layout)  
- **performance hints** (previews, thumbnails)  
- **non‑authoritative convenience** (autocomplete suggestions)  
- **pure computation reuse** (memoization of pure functions)  
- **read‑only acceleration** where correctness does not depend on freshness  

Caching is safe when:

- the cached value is not used for correctness decisions  
- the cached value is not used for business rules  
- the cached value is not used for validation  
- the cached value is not used for reconciliation  
- the cached value is not used as a source of truth  

Caching is safe when **stale data cannot cause incorrect behavior**.

Caching is safe when **freshness does not matter**.

---

## 3. What caching breaks when misused

Caching becomes dangerous when the cached value is treated as **truth**.

This creates **Dual Truth**:

- System A holds **Truth 1** (authoritative)  
- System B holds **Truth 2** (cached copy)  

During the caching period, these truths **diverge**.  
Divergence is guaranteed.

Caching misused causes:

- stale reads  
- inconsistent behavior  
- nondeterminism  
- correctness failures  
- race conditions  
- reconciliation work  
- Heisenbugs  
- user confusion  
- business logic errors  

Caching misused violates **Single Source of Truth (SSOT)**.

Caching misused destroys correctness.

---

## 4. Why caching causes Dual Truth

Caching duplicates meaning.

Once meaning is duplicated:

- the two copies drift  
- the system must reconcile  
- correctness becomes probabilistic  
- bugs become intermittent  
- truth becomes unclear  

Caching is not a performance optimization.  
Caching is a correctness compromise.

Caching is the most common SSOT violation in modern systems.

---

## 5. When caching must never be used

Caching must never be used for:

- authoritative truth  
- business rules  
- validation logic  
- security decisions  
- financial calculations  
- inventory counts  
- permissions  
- identity  
- anything correctness‑critical  

Caching must never be used where **freshness is required for correctness**.

---

## 6. Summary

**Caching**:

- stores a copy of data for speed  
- is safe when the data is non‑authoritative  
- is safe when freshness does not matter  
- is safe for presentation and convenience  
- becomes dangerous when used for truth  
- creates Dual Truth when misused  
- guarantees drift between authoritative and cached values  
- violates SSOT when used for correctness  
- trades correctness for performance  

Caching is a performance tool.  
Caching is not a correctness tool.

---

## See also

- glossary/single-source-of-truth.md  
- glossary/dual-truth.md  
- glossary/correctness-first.md  
- glossary/separation-of-concerns.md  
- glossary/pure-function.md  
- glossary/side-effect.md
