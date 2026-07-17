# Non‑Deterministic

A system is **non‑deterministic** when it does **not** always behave the same way.  
The same input can produce **different outputs** at different times.

Non‑deterministic systems are unpredictable, unstable, and harder to reason about.

---

## 1. Non‑deterministic means “not always the same”

If you run the same action twice and get **different results**, the system is non‑deterministic.

Example idea:
```
Check the current time.
It changes every moment.
```

There is variation.  
There is guessing.  
There is hidden behavior.

---

## 2. Sources of non‑determinism

Non‑deterministic behavior usually comes from:

- randomness  
- timing  
- external events  
- changing state  
- human actions  
- network conditions  

These factors make the result unpredictable.

---

## 3. Examples of non‑deterministic systems

### 1. Bank balance
Your bank balance changes over time:
- deposits  
- withdrawals  
- fees  
- interest  

Checking your balance twice can give different results.

### 2. Car odometer reading
A car’s odometer increases as the car moves.  
Reading it twice gives different values unless the car has not moved at all.

### 3. Web site state
A web site may be:
- up or down  
- slow or fast  
- changed or updated  

Reloading the same page can show different content at different times.

### 4. Random number generators
Random number functions produce different values each time.

Example:
```
random()
```

This never returns the same value predictably.

### 5. Human behavior
People do not act the same way every time.  
Human decisions are non‑deterministic.

---

## 4. Non‑deterministic behavior in programming

Some programming operations are non‑deterministic:

- reading the current time  
- reading keyboard input  
- reading mouse movement  
- reading network data  
- reading a file that may change  
- random number generation  

Example:
```d
auto t = Clock.currTime();
```

This returns a different value each moment.

---

## 5. Deterministic vs. non‑deterministic

### Deterministic:
- same input → same output  
- predictable  
- repeatable  
- stable  
- safe to reason about  

### Non‑deterministic:
- same input → different output  
- unpredictable  
- depends on outside events  
- unstable  
- harder to reason about  

---

## 6. Moving behavior away from non‑determinism

Whenever possible, behavior should be moved **from non‑deterministic to deterministic**.

If a part of a system *can* be made deterministic, it *should* be:

- predictable behavior is easier to understand  
- deterministic code is easier to test  
- deterministic systems reduce errors  
- deterministic rules remove surprises  

The goal is to reduce non‑determinism as much as possible.

What remains is **pure non‑determinism**, which cannot be made deterministic by definition.

---

## See also

- **glossary/deterministic.md**  
- **glossary/iteration.md**  
- **glossary/range.md**
