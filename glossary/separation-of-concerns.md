# Separation of Concerns

**Separation of Concerns (SoC)** is a design principle that states:

> A program should be divided into distinct sections,  
> each responsible for a single, well‑defined concern.

A **concern** is a specific responsibility, purpose, or area of knowledge.  
When concerns are separated, each part of the program becomes easier to understand, test, and maintain.

---

## 1. SoC is the King of best practices

SoC is the **King** because it governs everything else.

If you get SoC right:

- clarity increases  
- complexity decreases  
- correctness becomes easier  
- testing becomes simpler  
- architecture becomes cleaner  
- every other best practice becomes easier to apply  

If you get SoC wrong:

- multiple concerns mix together  
- complexity rises  
- behavior becomes foggy  
- debugging becomes harder  
- the purpose of the code becomes unclear  
- you start asking “What does this *actually* do?”  

Whenever something looks too complex or too foggy, **check SoC first**.  
Mixed concerns are often the root cause.

---

## 2. What is a concern?

A concern is any coherent responsibility:

- parsing input  
- validating data  
- performing calculations  
- rendering output  
- storing information  
- communicating with external systems  
- enforcing business rules  

Each concern should live in its own place.

---

## 3. Why separation of concerns matters

Separating concerns:

- reduces complexity  
- prevents accidental coupling  
- makes code easier to test  
- makes code easier to reason about  
- makes code easier to change  
- makes code easier to reuse  

When concerns are mixed, everything becomes harder.

Example of mixed concerns:

```d
int addAndLog(int a, int b)
{
    writeln("Adding");   // logging concern
    return a + b;        // calculation concern
}
```

This violates SoC because logging and calculation are mixed.

---

## 4. Functions and separation of concerns

A function should do **one thing** and do it well.

Good:

```d
int add(int a, int b)
{
    return a + b;
}
```

Bad:

```d
int add(int a, int b)
{
    saveToDatabase(a, b);   // storage concern
    updateUI();             // UI concern
    return a + b;           // calculation concern
}
```

Mixing concerns makes the function harder to test and reason about.

---

## 5. Separation of concerns and Command–Query Separation

SoC aligns perfectly with **Command–Query Separation (CQS)**:

- A **command** performs an action (side effects).  
- A **query** returns information (no side effects).  

A function should be either a command or a query — not both.

This is a direct application of SoC:

- “doing work” is one concern  
- “returning information” is another concern  

They must not be mixed.

See glossary/command-query-separation.md.

---

## 6. Separation of concerns and pure functions

Pure functions are the ultimate example of SoC:

- they perform **only** computation  
- they have **no** side effects  
- they depend **only** on parameters  

This isolates the concern of “calculation” from all other concerns.

Pure functions satisfy the **Holy Grail of computing**:

1. If it fails for the user, it fails **exactly the same way** for you.  
2. Determining the cause of failure becomes trivial.

See glossary/pure-function.md.

---

## 7. Separation of concerns and side effects

Side effects represent a different concern from computation.

Mixing them leads to:

- unpredictable behavior  
- hidden dependencies  
- nondeterminism  
- difficult debugging  

Separating concerns means:

- pure functions handle computation  
- commands handle side effects  
- queries handle information retrieval  

See glossary/side-effect.md.

---

## 8. Separation of concerns and attributes

Attributes help enforce SoC by restricting concerns:

- `pure` forbids side effects  
- `nothrow` forbids exception concerns  
- `@safe` forbids unsafe memory concerns  
- `@nogc` forbids GC allocation concerns  

Attributes make concerns explicit and enforceable.

See glossary/attributes.md.

---

## 9. Separation of concerns at larger scales

SoC applies at every level:

### Functions
Each function should handle one responsibility.

### Modules
Each module should represent one area of knowledge.

### Packages
Each package should represent one subsystem.

### Systems
Each system should represent one domain.

SoC scales from the smallest function to the largest architecture.

---

## 10. Summary

**Separation of Concerns** means:

- each part of a program handles one responsibility  
- concerns must not be mixed  
- code becomes easier to test, reason about, and maintain  
- pure functions isolate computation  
- commands isolate side effects  
- queries isolate information retrieval  
- attributes enforce concern boundaries  
- SoC is the King of best practices: get it right, and everything else becomes easier  

SoC is one of the most important principles in software design.

---

## See also

- glossary/command.md  
- glossary/query.md  
- glossary/command-query-separation.md  
- glossary/pure-function.md  
- glossary/side-effect.md  
- glossary/function.md  
- glossary/function-signature.md  
- glossary/attributes.md
