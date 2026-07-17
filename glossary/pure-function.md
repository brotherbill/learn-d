# Pure Function

A **pure function** is a function that always returns the same result for the same input **and** causes **no side effects**.

Purity has two requirements:

1. **Deterministic** — same input → same output  
2. **No side effects** — does not modify anything outside itself

If either rule is broken, the function is not pure.

Example of a pure function:

```d
int add(int a, int b)
{
    return a + b;
}
```

This function:

- depends only on its parameters  
- returns the same result every time  
- does not modify anything  

It is pure.

---

## 1. Deterministic behavior

A pure function’s output depends **only** on its parameters.

It must not depend on:

- global variables  
- hidden state  
- random numbers  
- time of day  
- external systems  
- previous calls  

Example of a non‑pure function:

```d
int nextId()
{
    return ++counter;   // depends on external state
}
```

This is not pure because the result changes each call.

---

## 2. No side effects

A pure function must not:

- read or modify a module‑level or global variable  
- write to a file  
- update a database  
- send a message  
- change a UI element  
- mutate an object  
- alter global or shared state  

Example of a non‑pure function:

```d
int addAndLog(int a, int b)
{
    writeln("Adding");  // side effect
    return a + b;
}
```

The logging makes it impure.

See glossary/side-effect.md.

---

## 3. Pure functions satisfy the Holy Grail of computing

Pure functions achieve the ideal that all developers want:

### 1. If it fails for the user, it will fail **exactly the same way** for you  
There is no hidden state, no timing dependency, no external influence.  
The failure is reproducible with perfect fidelity.

### 2. Determining the cause of a failure becomes trivial  
Because the function depends only on its parameters, debugging reduces to:

- capture the inputs  
- run the function  
- observe the output  

There is no mystery.  
No “it only fails on Tuesdays.”  
No “it depends on the last 17 calls.”  
No “it works on my machine.”

Pure functions are the **Holy Grail** because they make correctness transparent.

---

## 4. Debugging pure functions: allowed cheating

Pure functions forbid side effects — but debugging requires visibility.

D allows **controlled cheating** using the `debug` keyword:

```d
pure int add(int a, int b)
{
    debug writeln("a=", a, " b=", b);
    return a + b;
}
```

The `debug` block:

- is ignored in normal builds  
- is allowed in pure functions  
- does not violate purity in release mode  

This is the correct way to inspect state without breaking purity.

See glossary/attributes.md for `pure`.

---

## 5. Pure functions are queries

A pure function is always a **query**:

- it returns information  
- it does not perform an action  
- it does not change state  

Pure functions fit perfectly into **Command–Query Separation**.

See glossary/query.md and glossary/command-query-separation.md.

---

## 6. Benefits of pure functions

Pure functions are:

- easy to test  
- easy to reason about  
- easy to reuse  
- easy to optimize  
- easy to cache  
- easy to parallelize  

Because they have no side effects, they behave like mathematical functions.

---

## 7. Pure functions in D

D does not require purity, but purity is encouraged when appropriate.

A pure function in D:

- depends only on its parameters  
- returns a value  
- does not modify external state  

Purity is a design choice, not a language restriction.

---

## 8. Summary

A **pure function**:

- always returns the same result for the same input  
- has no side effects  
- depends only on its parameters  
- is always a query  
- is easy to test, reason about, and optimize  
- satisfies the Holy Grail of computing: reproducible failures and trivial debugging  
- allows controlled debugging via `debug` without breaking purity  

Purity is clarity.

---

## See also

- glossary/side-effect.md  
- glossary/query.md  
- glossary/command.md  
- glossary/command-query-separation.md  
- glossary/function.md  
- glossary/function-signature.md  
- glossary/attributes.md
