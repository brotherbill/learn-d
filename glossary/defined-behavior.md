# Defined Behavior

**Defined Behavior** means the program’s actions are fully described by the language specification.  
When behavior is defined, the language tells you exactly what happens.

Defined Behavior is the **home territory** of correctness‑oriented developers.

---

## 1. What “defined” really means

When a program stays within defined behavior:

- the compiler must follow the rules  
- the runtime must follow the rules  
- the program’s behavior is predictable  
- the same input produces the same output (modulo allowed nondeterminism)  

### What “modulo allowed nondeterminism” means

Some operations are intentionally nondeterministic — meaning the language *allows* multiple valid outcomes.  
Examples include:

- thread scheduling  
- hash table iteration order  
- parallel algorithm ordering  
- floating‑point rounding differences across CPUs  

These behaviors are **still defined**, because the specification says:

> “This operation may produce any of these outcomes.”

So the nondeterminism is *allowed*, *specified*, and *safe*.

It is not UB.

---

## 2. Defined Behavior vs Undefined Behavior

Defined Behavior:

- has rules  
- has guarantees  
- is predictable  
- is reproducible  
- can be reasoned about  

Undefined Behavior:

- has no rules  
- has no guarantees  
- is unpredictable  
- may not be reproducible  
- breaks reasoning  

Correctness lives only in the **defined** region.

---

## 3. Examples of defined behavior in D

### 3.1. In‑bounds array access
```d
int[] a = [10, 20, 30];
int x = a[1]; // defined — x = 20
```

### 3.2. Valid slice
```d
int[] a = [1, 2, 3, 4];
int[] s = a[1 .. 3]; // defined — s = [2, 3]
```

### 3.3. Arithmetic within range
```d
int x = 5;
int y = 7;
int z = x + y; // defined — z = 12
```

### 3.4. Well‑formed control flow
```d
if (flag)
{
    writeln("Yes");
}
else
{
    writeln("No");
}
```

All of these are fully described by the language.

---

## 4. Why defined behavior matters

Defined Behavior is essential for:

- correctness  
- predictability  
- reproducibility  
- safety  
- security  
- debugging  
- reasoning  

If behavior is defined, you can:

- prove properties  
- test meaningfully  
- debug logically  
- refactor with confidence  
- trust the program’s output  

If behavior is undefined, none of this is guaranteed.

---

## 5. Staying in the defined region

To stay in defined behavior:

- respect array and slice bounds  
- avoid dangling pointers and slices  
- avoid using memory after free  
- avoid invalid casts and type punning  
- follow the language’s rules for lifetime and ownership  
- use `@safe`, `pure`, `nothrow`, `@nogc` where appropriate  

These practices keep code inside the part of D where the specification applies and reasoning is valid.

---

## 6. Defined behavior and correctness

Correctness is the property:

> The program does exactly what it is supposed to do.

This can only be claimed when behavior is defined.

If behavior is undefined, correctness cannot exist, because:

- the language does not say what happens  
- the compiler may do anything  
- the program may change behavior without warning  

For correctness‑first developers:

> Defined Behavior is the only safe ground.  
> UB is the mortal enemy.

---

## See also

- glossary/undefined-behavior.md  
- glossary/slice.md  
- glossary/pointer.md  
- glossary/memory.md  
- glossary/array.md
