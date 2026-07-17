# Complexity

**Complexity is the scourge of developers.**  
It destroys correctness, increases cost, and makes systems fragile.

Complexity is not an aesthetic problem.  
Complexity is a **correctness problem**.

Complexity is the enemy.

---

## 1. What causes complexity

Complexity is caused by:

- **Too many moving parts**  
  Each part interacts with others, multiplying possible states.

- **Hidden dependencies**  
  Anything that is not explicit becomes a source of surprise.

- **Dual Truth**  
  Multiple representations of the same meaning guarantee drift.

- **Implicit behavior**  
  Anything that is not stated must be guessed.

- **Side effects**  
  Every side effect expands the state space.

- **Ambiguous contracts**  
  When responsibilities are unclear, code must defend itself.

- **State mutation**  
  Every mutation creates a new possible world.

- **Lack of invariants**  
  Without permanent truths, the system has no stable shape.

- **Lack of preconditions and postconditions**  
  Without boundaries, functions must handle everything.

Complexity is not caused by size.  
Complexity is caused by **interactions**.

---

## 2. Effects of complexity

Complexity produces:

- **Unpredictability**  
  The system behaves differently in different contexts.

- **Fragility**  
  Small changes break unrelated parts.

- **Nondeterminism**  
  Behavior depends on hidden state.

- **Increased cognitive load**  
  Developers cannot hold the system in their head.

- **Slower development**  
  Every change requires understanding the entire system.

- **More bugs**  
  More states → more paths → more failures.

- **Reduced correctness**  
  The system cannot be reasoned about.

- **Reduced maintainability**  
  Future developers cannot safely modify the system.

Complexity makes correctness **expensive** and sometimes **impossible**.

---

## 3. Costs of complexity (linear or exponential?)

The costs of complexity are **exponential**, not linear.

Why?

- Each new component interacts with all existing components.  
- Each new state multiplies the number of possible transitions.  
- Each new dependency multiplies the number of failure modes.  
- Each new assumption multiplies the number of ways to violate it.

If a system has:

- 10 components → ~100 interactions  
- 20 components → ~400 interactions  
- 40 components → ~1600 interactions  

This is not growth.  
This is **explosion**.

Complexity grows geometrically.  
Cost grows exponentially.

---

## 4. How to prevent complexity

Complexity is prevented by **reducing interactions**, not by reducing features.

Prevent complexity by:

- **Single Source of Truth (SSOT)**  
  Never duplicate meaning.

- **Explicit contracts**  
  Preconditions, postconditions, invariants.

- **Pure functions**  
  No side effects, no hidden state.

- **Small, well‑defined domains**  
  Functions only accept legal input.

- **Clear separation of concerns**  
  Each component has one responsibility.

- **Immutable data**  
  Fewer states → fewer transitions → fewer bugs.

- **Minimal dependencies**  
  Every dependency is a potential failure.

- **Explicit behavior**  
  Nothing implicit. Nothing magical.

- **Correctness‑first design**  
  Performance follows correctness; correctness never follows performance.

Complexity is prevented by **discipline**, not by cleverness.

---

## 5. Costs of getting it right now vs getting it right later

### Getting it right now  
Cost: **small**  
- Clear contracts  
- Clean invariants  
- Single truth  
- Predictable behavior  
- Stable foundation  
- Future changes are cheap

### Getting it right later  
Cost: **massive**  
- Rewriting broken assumptions  
- Untangling hidden dependencies  
- Rebuilding invariants  
- Eliminating dual truth  
- Fixing cascading failures  
- Replacing fragile components  
- Relearning the system  
- Re‑establishing correctness

Correctness deferred is **correctness multiplied**.

Every day complexity is allowed to grow, the cost of removing it increases **exponentially**.

Getting it right later is always more expensive than getting it right now.

---

## 6. Summary

**Complexity**:

- is caused by interactions, not size  
- destroys correctness  
- increases cognitive load  
- multiplies failure modes  
- grows exponentially  
- makes systems fragile  
- makes development slow  
- makes maintenance dangerous  
- must be prevented early  
- is far cheaper to avoid than to remove  

Complexity is the enemy of correctness.

---

## See also

- glossary/correctness-first.md  
- glossary/single-source-of-truth.md  
- glossary/dual-truth.md  
- glossary/invariant.md  
- glossary/precondition.md  
- glossary/postcondition.md
- glossary/simplicity.md
