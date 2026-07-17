# API

An **API** (Application Programming Interface) is the set of rules that define **how one piece of software communicates with another**.  
It describes *what you can call*, *what you must provide*, and *what you will receive*.

“API” is a broad term.  
It applies to:

- remote services (REST, SOAP, RPC)  
- external libraries (C integration, system calls)  
- local modules and packages  
- individual functions inside your own program  

At every scale, an API defines **what is exposed** and **how it must be used**.

---

## 1. API at the function level

At the smallest scale, a single function has an API.

A function’s API is defined by its **signature**:

- the function name  
- the parameters it accepts  
- the types of those parameters  
- the return type  

Example:

```d
int add(int a, int b);
```

This signature is the function’s **API**.  
It tells callers:

- what the function expects (`a` and `b`)  
- what types it requires (`int`)  
- what it returns (`int`)  

The **body** implements the API.  
The **signature** describes it.

For beginners:  
> The API is the set of inputs a function accepts and the output it returns.

---

## 2. API at the module or library level

A module or library exposes a set of functions, types, and constants.  
These exposed items form the module’s **public API**.

Example:

```d
module math;

int add(int a, int b);
double sqrt(double x);
```

The module’s API is everything it makes available to callers.  
Anything not exposed is **internal** and may change freely.

---

## 3. API for external C integration

When calling C functions from D, the C header defines the **C API**.

Example:

```c
double cos(double x);
```

In D:

```d
extern(C) double cos(double x);
```

The C API tells D exactly how to call the function:

- name  
- parameter types  
- return type  
- calling convention  

This is still an API — just at a language boundary.

---

## 4. API for remote services (REST, SOAP, RPC)

At a larger scale, APIs define how programs communicate across machines.

### REST API
Uses HTTP verbs (`GET`, `POST`, etc.) and JSON payloads.

### SOAP API
Uses XML envelopes and strict schemas.

### RPC / gRPC API
Defines remote procedures and message formats.

These APIs specify:

- endpoints  
- request formats  
- response formats  
- error codes  
- authentication rules  

Even though the scale is larger, the idea is the same:  
**an API defines what you can call and what you must provide.**

---

## 5. The cost of calling an API: fine‑grained vs coarse‑grained

Not all APIs cost the same to call.  
Some are cheap.  
Some are expensive.

This cost determines whether the API should be **fine‑grained** or **coarse‑grained**.

### Fine‑grained API (cheap calls)
A fine‑grained API exposes many small operations.

- cheap to call  
- fast  
- low overhead  
- suitable for chatty usage  

Example:  
Incrementing a counter inside your own process.

```d
counter.increment();
```

This is cheap.  
Chatty is fine.

### Coarse‑grained API (expensive calls)
A coarse‑grained API exposes fewer, larger operations.

- expensive to call  
- high overhead  
- chatty usage becomes painfully slow  
- caller should batch work into a single request  

Example:  
A web API call over the network.

You **would not** want:

```text
POST /incrementCounter
POST /incrementCounter
POST /incrementCounter
```

This is chatty, and chatty is slow.

Instead, you pass everything at once:

```text
POST /processBatch
```

### Real‑world example: Microsoft WPF

Microsoft’s next‑generation graphics API (WPF) is **coarse‑grained**:

- you describe the entire visual tree  
- you hand it to the rendering engine  
- the engine processes it in bulk  

This avoids chatty calls into the graphics subsystem.  
It is the correct design for an expensive API.

### Rule of thumb

- **If calling the API is cheap:** fine‑grained is good.  
- **If calling the API is expensive:** coarse‑grained is required.  
- **Chatty + expensive = terrible performance.**

API cost determines API shape.

---

## 6. Designing an API requires great care and craftsmanship

API design is one of the most important responsibilities in software engineering.  
A poorly designed API causes long‑term pain for everyone who depends on it.

### 1. Others will depend on it  
Once an API is published, other developers build on top of it.  
Their code, their systems, and sometimes their businesses rely on your API remaining stable.

### 2. Replacing an API is expensive  
If an API must be abandoned and replaced with a cleaner one, many parties suffer:

- callers must rewrite code  
- documentation must be updated  
- compatibility layers must be built  
- bugs appear during migration  
- old and new versions must coexist temporarily  

A bad API can cost months or years of accumulated technical debt.

### 3. The API signature is cast in stone  
Once published, the **signature** becomes a promise:

- parameter names  
- parameter types  
- return types  
- error behavior  
- calling conventions  

Changing any part of the signature breaks callers.  
Therefore, the API must be designed with long‑term stability in mind.

### 4. The body is free to innovate  
The implementation behind the API can change freely:

- optimizations  
- refactoring  
- new algorithms  
- caching  
- parallelization  
- hardware acceleration  

As long as the **API signature** remains stable, callers never notice the internal changes.

This separation — **stable API, flexible implementation** — is the foundation of good software design.

> API design is architecture, not decoration.

---

## 7. API vs implementation

An API is **what is promised**.  
The implementation is **how the promise is fulfilled**.

The API must remain stable.  
The implementation may change freely.

Example:

```d
int add(int a, int b);   // API
```

The body can be rewritten, optimized, or replaced:

```d
return a + b;             // simple
return fastAdd(a, b);     // optimized
return hardwareAdd(a, b); // accelerated
```

The API stays the same so callers do not break.

---

## 8. Why APIs matter

APIs allow software to:

- communicate  
- interoperate  
- remain modular  
- hide internal details  
- evolve without breaking callers  

Good APIs are:

- clear  
- explicit  
- stable  
- predictable  

Bad APIs cause confusion, bugs, and tight coupling.

---

## 9. Summary

An **API** is:

- the interface between software components  
- the rules for calling a function, module, library, or service  
- defined by signatures, types, endpoints, and return values  
- used at every scale: local functions, libraries, C integration, REST, SOAP, RPC  

Designing an API requires **great care**:

- others will depend on it  
- replacing it is expensive  
- the signature is cast in stone  
- the body is free to innovate  
- the cost of calling the API determines whether it should be fine‑grained or coarse‑grained  

APIs are broad, universal, and essential.

---

## See also

- glossary/function.md  
- glossary/parameter.md  
- glossary/argument.md  
- glossary/type.md
