# Memoization

**Memoization** is the practice of storing the result of a computation so the same computation does not need to be performed again.  
Memoization trades **CPU time** for **memory**.

Memoization is a performance technique.  
Memoization is not a correctness technique.

Memoization is safe only when the computation is **pure**.  
Memoization is dangerous when the computation depends on **changing state**.

---

## 1. What memoization is

Memoization creates a **lookup table** of previously computed results.

Typical examples:

- storing results of expensive pure functions  
- caching deterministic computations  
- remembering results of pure transformations  
- avoiding repeated work in recursive algorithms  
- accelerating pure mathematical operations  

Memoization reduces:

- CPU usage  
- repeated computation  
- algorithmic cost  

Memoization increases:

- speed  
- responsiveness  
- throughput  

Memoization is fundamentally a **pure-function accelerator**.

---

## 2. When memoization is safe

Memoization is safe when the function being memoized is **pure**.

A pure function:

- depends only on its parameters  
- has no side effects  
- does not read mutable global state  
- does not depend on time  
- does not depend on randomness  
- always returns the same result for the same inputs  

Example of safe memoization:

```d
int fib(int n)
{
    // pure computation
}
```

Memoization is safe when:

- the function is deterministic  
- the function is referentially transparent  
- the function’s output never changes for the same input  
- the memoized value is not used as truth  
- correctness does not depend on freshness  

Memoization is safe when **stale results cannot cause incorrect behavior**.

Memoization is safe when **freshness does not matter**.

---

## 3. When memoization is not safe

Memoization becomes dangerous when the function being memoized is **not pure**.

Memoizing an impure function creates **Dual Truth**:

- the memo table holds **Truth 1** (the old result)  
- the real world holds **Truth 2** (the new result)  

These truths diverge.  
Divergence is guaranteed.

Memoization misused causes:

- stale results  
- incorrect answers  
- nondeterministic behavior  
- correctness failures  
- race conditions  
- Heisenbugs  
- user confusion  
- business logic errors  

Memoization misused violates **Single Source of Truth (SSOT)**.

Memoization misused destroys correctness.

---

## 4. Examples of unsafe memoization

### Depends on time

```d
long currentTimeMillis();   // never memoize
```

### Depends on randomness

```d
int rollDie();              // never memoize
```

### Depends on mutable global state

```d
int activeUserCount();      // never memoize
```

### Depends on external systems

```d
double currentBalance(UserID id);   // never memoize
```

Memoizing these functions produces incorrect results.

---

## 5. Memoization vs caching

Memoization is a **local** optimization.  
Caching is a **system‑level** optimization.

Memoization stores **computed values**.  
Caching stores **retrieved values**.

Both create **Dual Truth** when misused.  
Both must be restricted to **non‑authoritative** data.

Memoization is safe only for **pure computations**.  
Caching is safe only for **non‑truth presentation data**.

---

## 6. Summary

**Memoization**:

- stores computed results for speed  
- is safe only for pure functions  
- is unsafe for impure functions  
- creates Dual Truth when misused  
- guarantees drift when memoizing impure computations  
- violates SSOT when used for correctness  
- trades correctness for performance when misapplied  

Memoization is a performance tool.  
Memoization is not a correctness tool.

---

## See also

- glossary/pure-function.md  
- glossary/side-effect.md  
- glossary/caching.md  
- glossary/dual-truth.md  
- glossary/single-source-of-truth.md
