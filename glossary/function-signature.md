# Function Signature

A **function signature** defines a function’s **API**.  
It specifies *what the function accepts* and *what it returns*.

The signature includes:

- the function name  
- the parameters  
- the types of those parameters  
- the return type  

Example:

```d
int add(int a, int b);
```

This signature tells callers:

- the function is named `add`  
- it expects two `int` parameters  
- it returns an `int`  

The signature is the **interface** for calling the function.  
The body provides the **implementation** of that interface.

---

## 1. The signature is cast in stone

Once published, the signature becomes a promise:

- function name  
- parameter names  
- parameter types  
- return type  
- calling convention  
- error behavior  

Changing the signature breaks callers.  
Therefore, signatures must be designed with great care.

See glossary/api.md.

---

## 2. The body is free to innovate

The implementation behind the signature may change freely:

- new algorithms  
- optimizations  
- caching  
- parallelization  
- hardware acceleration  

As long as the signature remains stable, callers never notice the internal changes.

Example:

```d
int add(int a, int b);   // signature
```

Possible bodies:

```d
return a + b;             // simple
return fastAdd(a, b);     // optimized
return hardwareAdd(a, b); // accelerated
```

The signature stays the same.  
The implementation evolves.

---

## 3. Parameters belong to the signature

Parameters appear only in the signature.  
They are placeholder names for values the caller will provide.

Example:

```d
void greet(string name);
```

`name` is a parameter.  
It is not a value until the function is called.

See glossary/parameter.md.

---

## 4. Arguments belong to the call site

Arguments are the actual values passed to the function.

Example:

```d
greet("Alice");
```

`"Alice"` is an argument.

See glossary/argument.md.

---

## 5. The signature defines the function’s API

The signature is the function’s local API.  
It defines:

- what the function expects  
- what types it accepts  
- what it returns  

The body implements the API.  
The signature describes it.

See glossary/api.md.

---

## 6. Commands vs queries

A function signature does not specify whether the function is a **command** or a **query**, but it strongly influences how callers interpret the function.

- Commands typically return `void` or a status.  
- Queries return information and must not cause side effects.

See glossary/command.md, glossary/query.md, and glossary/command-query-separation.md.

---

## 7. Purity and side effects

The signature does not indicate whether a function is **pure** or has **side effects**, but purity is often declared using attributes.

Example:

```d
pure int add(int a, int b);
```

Purity guarantees:

- deterministic behavior  
- no side effects  
- trivial debugging (the Holy Grail of computing)

See glossary/pure-function.md and glossary/side-effect.md.  
See glossary/attributes.md for `pure`.

---

## 8. Summary

A **function signature** is:

- the function’s API  
- the stable interface  
- the list of parameters and their types  
- the return type  
- the part that must not change  

The signature is cast in stone.  
The body is free to innovate.

---

## See also

- glossary/function.md  
- glossary/parameter.md  
- glossary/argument.md  
- glossary/api.md  
- glossary/command.md  
- glossary/query.md  
- glossary/command-query-separation.md  
- glossary/pure-function.md  
- glossary/side-effect.md  
- glossary/attributes.md
