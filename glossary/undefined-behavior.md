# Undefined Behavior (UB)

**Undefined Behavior** means the program performs an action that the language does not define.  
When UB occurs, the language specification provides **no rules** and **no guarantees**.

UB is not a crash.  
UB is not a wrong answer.  
UB is not corrupted data.

UB means **anything** can happen — including “working perfectly.”

For correctness‑oriented developers, UB is the **mortal enemy**.

---

## 1. What “undefined” really means

When a program enters UB, the compiler is allowed to assume:

- UB never happens  
- the code path is impossible  
- values have impossible properties  
- memory is valid even when it is not  
- reordering is safe even when it is not  

The compiler may:

- remove code  
- reorder code  
- fuse code  
- generate surprising machine instructions  
- optimize based on assumptions that are false  

Once UB occurs, the program is no longer predictable.

---

## 2. UB does **not** mean “the program breaks”

A critical truth:

**UB does not guarantee a crash, a wrong answer, or any visible failure.**

In fact, UB often appears to “work”:

- the program runs normally  
- the output looks correct  
- the system stays stable  
- nothing seems wrong  

UB code can run perfectly for a billion years.

UB can be **extremely stable**.

UB can pass every test.  
UB can ship to customers.  
UB can survive refactors.  
UB can look correct forever.

But it is still UB.

And because UB has no rules, it can **snap at any moment**, for no reason:

- a compiler update  
- a new CPU  
- a different optimization level  
- a small refactor  
- a different build mode  
- a different input  
- or simply “today instead of yesterday”

UB is not “broken code.”  
UB is **code that cannot be trusted**, even when it appears correct.

---

## 3. UB can be extraordinarily difficult to reproduce

UB is often **non‑deterministic** in appearance:

- it may fail once, then never again  
- it may fail only under heavy load  
- it may fail only with certain optimizations  
- it may fail only on certain CPUs  
- it may fail only after a refactor that seems unrelated  
- it may fail only in production, never in testing  

UB bugs can hide for years.

UB can be **impossible to reproduce on demand**.

A correctness‑oriented developer may spend days or weeks chasing a failure that:

- appears once  
- leaves no trace  
- cannot be triggered again  
- has no obvious cause  
- and is actually UB that happened long ago

---

## 4. UB can be extraordinarily difficult to diagnose

UB breaks reasoning.

Once UB occurs:

- the program’s behavior is not trustworthy  
- logs may lie  
- stack traces may lie  
- variable values may lie  
- memory may appear correct when it is not  
- symptoms may appear far from the true cause  
- the failure may occur in unrelated code  

UB destroys the ability to reason about the program.

The true cause of a UB failure may be:

- thousands of lines away  
- in a different module  
- in a different subsystem  
- in code that “worked fine” for years  
- in code that “cannot possibly be related”  

UB is the hardest class of bug to diagnose because **the program is no longer bound by rules**.

---

## 5. Common sources of UB in D

### 5.1. Dangling pointers
```d
int* p;
{
    int x = 5;
    p = &x;
}        // x goes out of scope

*p = 10; // UB — p points to invalid memory
```

### 5.2. Dangling slices
```d
int[] s;

{
    int[] temp = [1, 2, 3];
    s = temp[0 .. $];
}        // temp destroyed

writeln(s[0]); // UB
```

### 5.3. Slices after reallocation
```d
int[] a = [1, 2, 3, 4];
int[] s = a[1 .. $];

a ~= 999;      // may move a to new memory

writeln(s[0]); // UB if moved
```

### 5.4. Out‑of‑bounds slicing
```d
int[] a = [1, 2, 3];
auto s = a[0 .. 10]; // UB — slice past end
```

### 5.5. Type punning without guarantees
Casting memory to a different type without alignment or size guarantees can cause UB.

---

## 6. Why UB is dangerous

UB destroys:

- correctness  
- predictability  
- reproducibility  
- safety  
- security  
- debugging  
- reasoning  

A program with UB cannot be trusted, even if it “seems to work.”

UB may hide for years and then appear after:

- a compiler update  
- an optimization change  
- a new CPU  
- a small code refactor  
- a different build mode  

UB is a correctness time‑bomb.

---

## 7. UB vs errors vs exceptions

| Kind               | Defined? | Predictable? | Safe? | Notes |
|--------------------|----------|--------------|-------|-------|
| Error              | Yes      | Yes          | Yes   | Program stops or reports |
| Exception          | Yes      | Yes          | Yes   | Controlled failure |
| Undefined Behavior | No       | No           | No    | Anything can happen |

UB is the only category that destroys correctness.

---

## 8. Avoiding UB

To avoid UB:

- keep slices within bounds  
- ensure slices never outlive their source  
- avoid aliasing that breaks assumptions  
- avoid pointer arithmetic unless proven safe  
- avoid casts that violate alignment or size  
- avoid using memory after free  
- avoid assuming layout without guarantees  

Correctness‑oriented developers treat UB as a **hard stop**.

### Using D’s safety attributes to reduce UB

D provides attributes that restrict the language to a safer subset.  
These attributes remove many dangerous operations entirely, so fewer UB‑producing mistakes are even *possible*.

- `@safe` — disallows operations that can violate memory safety  
- `pure` — forbids hidden side effects  
- `nothrow` — forbids throwing exceptions  
- `@nogc` — forbids implicit GC allocations  

Using these attributes together forces code into a smaller, more disciplined subset of D, where:

- fewer operations are legal  
- fewer assumptions can be violated  
- fewer hidden behaviors exist  
- fewer paths to UB remain  

They do not eliminate UB, but they **dramatically reduce the surface area** where UB can occur.


---

## 9. Why UB matters

UB matters because correctness depends on **defined behavior**.  
If behavior is undefined, correctness cannot exist.

For correctness‑first developers:

> UB is the mortal enemy.  
> Defined behavior is the only safe ground.

---

## See also

- glossary/slice.md  
- glossary/pointer.md  
- glossary/memory.md  
- glossary/array.md  
- glossary/index.md
