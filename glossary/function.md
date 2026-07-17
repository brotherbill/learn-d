# Function

A **function** is a named block of code that performs a specific operation.  
It accepts input, performs work, and may return a result.

A function has two parts:

1. **Signature** — the function’s API  
2. **Body** — the implementation of that API

The signature defines *what the function promises*.  
The body defines *how the promise is fulfilled*.

Example:

```d
int add(int a, int b)    // signature
{
    return a + b;        // body
}
```

---

## 1. What a function does

A function:

- receives **arguments** from the caller  
- binds them to **parameters**  
- executes its body  
- optionally returns a value  

Functions allow programs to:

- reuse logic  
- avoid duplication  
- stay modular  
- stay readable  
- stay testable  

Functions are the fundamental building blocks of D programs.

---

## 2. Function signature vs function body

The **signature** defines the function’s API:

- name  
- parameters  
- parameter types  
- return type  

The **body** contains the implementation:

- statements  
- expressions  
- loops  
- conditionals  
- local variables  

The signature must remain stable.  
The body may change freely.

See glossary/function-signature.md.

---

## 3. Functions and parameters

A function’s parameters appear in the **signature**.  
They are placeholder names for values the caller will supply.

Example:

```d
void greet(string name)
```

Here, `name` is a parameter.  
It is not a value until the function is called.

See glossary/parameter.md.

---

## 4. Functions and arguments

Arguments are the **actual values** passed to a function when it is called.

Example:

```d
greet("Alice");   // "Alice" is an argument
```

See glossary/argument.md.

---

## 5. Functions and APIs

Every function has a local API defined by its signature.  
The signature is the interface.  
The body is the implementation.

See glossary/api.md.

---

## 6. Functions and behavior

A function may:

- return a value  
- perform work without returning a value  
- modify data  
- call other functions  
- allocate memory  
- interact with the outside world  

Whether a function has **side effects** or is **pure** is covered separately.

See glossary/pure-function.md and glossary/side-effect.md.

---

## 7. Commands and queries

A function may be either:

- a **command** — performs an action, causes side effects  
- a **query** — returns information, causes no side effects  

A function should not do both.

See glossary/command.md, glossary/query.md, and glossary/command-query-separation.md.

---

## 8. Summary

A **function** is:

- a named block of code  
- defined by a signature and a body  
- called with arguments  
- executed using parameters  
- part of the program’s API  
- stable in signature, flexible in implementation  
- either a command (does work) or a query (returns information)  

Functions are the core units of behavior in D.

---

## See also

- glossary/function-signature.md  
- glossary/parameter.md  
- glossary/argument.md  
- glossary/api.md  
- glossary/pure-function.md  
- glossary/side-effect.md  
- glossary/command.md  
- glossary/query.md  
- glossary/command-query-separation.md
