# Predicate

A **predicate** is an expression that evaluates to **true** or **false**.  
Predicates are the building blocks of conditions in selection and loops.

Every condition in a program is a predicate.

---

## 1. Predicates produce true or false

A predicate always answers a yes/no question.

Examples:
```
n == 5
n > 3
n != 0
```

Each one produces either:
```
true
false
```

Predicates never produce numbers, strings, or other values.  
Only true or false.

---

## 2. Predicate operators

Common predicate operators:

- `==` equal  
- `!=` not equal  
- `<` less than  
- `>` greater than  
- `<=` less than or equal  
- `>=` greater than or equal  

Examples:
```
7 > 2      // true
4 == 9     // false
n != 0     // true if n is not zero
```

---

## 3. Predicates in selection

Predicates decide which block runs.

Example:
```d
if (n > 5)     // predicate
{
    writeln("Greater");
}
```

The predicate `n > 5` controls the decision.

---

## 4. Predicates in loops

Predicates control repetition.

Example:
```d
while (n < 3)   // predicate
{
    writeln(n);
    n = n + 1;
}
```

The loop repeats **while** the predicate is true.  
When the predicate becomes false, the loop stops.

---

## 5. Predicate vs assignment

A predicate uses comparison (`==`), not assignment (`=`).

Correct:
```d
if (n == 5)
```

Wrong:
```d
if (n = 5)
```

Assignment changes the value.  
Comparison checks the value.

Beginners often confuse these.

---

## 6. Predicates are deterministic

Predicates are **deterministic** whenever the values they test are deterministic.

Example:
```
n == 4
```

This always produces the same result for the same value of `n`.

If the value being tested is non‑deterministic (like the current time),  
the predicate becomes non‑deterministic too.

Example:
```d
Clock.currTime() == lastCheck
```

This may produce different results at different moments.

Whenever possible, predicates should be built from deterministic values.  
This makes conditions predictable and easier to reason about.

---

## 7. Why predicates matter

Predicates let your program:

- make decisions  
- choose between paths  
- repeat actions  
- stop repeating actions  
- respond to changing values  

Predicates are the foundation of all control flow.

---

## See also

- **glossary/condition.md**  
- **glossary/selection.md**  
- **glossary/loop.md**  
- **glossary/deterministic.md**  
- **glossary/non-deterministic.md**
