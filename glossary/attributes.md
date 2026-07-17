# Attributes

An **attribute** is a keyword placed before a function, type, or declaration that adds extra meaning or restrictions.  
Attributes modify *how* the compiler treats the code, without changing *what* the code does.

Attributes are part of D’s correctness‑first design.  
They allow developers to express intent clearly and enforce guarantees at compile time.

Example:

```d
pure int add(int a, int b)
{
    return a + b;
}
```

Here, `pure` is an attribute that restricts what the function is allowed to do.

---

## 1. Attributes describe behavior, not implementation

Attributes do not change the logic inside a function.  
They change the **rules** the compiler enforces.

Attributes can:

- restrict side effects  
- restrict memory access  
- restrict parameter usage  
- restrict exception behavior  
- restrict mutability  
- improve optimization  
- improve safety  

Attributes are promises the compiler checks and enforces.

---

## 2. Common D function attributes

### `pure`
A pure function:

- always returns the same result for the same input  
- has no side effects  
- depends only on its parameters  

Pure functions satisfy the **Holy Grail of computing**:

1. If it fails for the user, it fails **exactly the same way** for you.  
2. Determining the cause of failure becomes trivial.

See glossary/pure-function.md.

---

### `nothrow`
The function guarantees it will not throw exceptions, directly or indirectly.

```d
nothrow int add(int a, int b)
```

If the function even *allows* throwing, the compiler rejects it.

---

### `@safe`
The function is memory‑safe.  
It cannot perform operations that risk memory corruption.

```d
@safe void process(int[] data)
```

The compiler enforces safety rules.

---

### `@nogc`
The function performs no garbage‑collection allocations.

```d
@nogc void renderFrame()
```

Useful for real‑time or performance‑critical code.

---

### `const`, `immutable`, `inout`
These attributes control mutability and how data flows through a function.

Example:

```d
int length(const string s)
```

The function is prohibited from modifying `s`.

---

### `@trusted`
Marks code as safe *by developer guarantee*.  
The compiler trusts the developer’s judgment.

Use sparingly.

---

## 3. Attributes combine to form strong guarantees

Attributes can be combined:

```d
pure nothrow @safe @nogc int add(int a, int b)
{
    return a + b;
}
```

This function is:

- pure  
- memory‑safe  
- non‑throwing  
- GC‑free  

Attributes allow extremely strong correctness guarantees.

---

## 4. Debugging and attributes

Pure functions forbid side effects — but debugging requires visibility.

D allows **controlled cheating** using the `debug` keyword:

```d
pure int add(int a, int b)
{
    debug writeln("a=", a, " b=", b);  // allowed in pure functions
    return a + b;
}
```

`debug` lines are ignored in release builds, so purity is preserved.

See glossary/pure-function.md.

---

## 5. Attributes vs function signatures

Attributes are **not** part of the function signature.  
They do not affect:

- parameter types  
- return type  
- calling convention  

Attributes modify *how* the function behaves, not *what* it accepts or returns.

See glossary/function-signature.md.

---

## 6. Summary

An **attribute**:

- modifies how the compiler treats a function or declaration  
- enforces correctness guarantees  
- restricts side effects, memory access, exceptions, and GC usage  
- improves safety and optimization  
- is not part of the function signature  
- expresses developer intent clearly  

Attributes are a cornerstone of D’s correctness‑first philosophy.

---

## See also

- glossary/pure-function.md  
- glossary/side-effect.md  
- glossary/function.md  
- glossary/function-signature.md  
- glossary/command.md  
- glossary/query.md  
- glossary/command-query-separation.md
