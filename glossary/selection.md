# Selection

**Selection** is choosing one path of code or another based on a condition.  
In D, selection is done with **if** and **else**.

Selection lets a program make decisions.

Example:
```d
int x = 5;

if (x > 3)
{
    writeln("x is greater than 3");
}
else
{
    writeln("x is not greater than 3");
}
```

The condition `x > 3` decides which block runs.

---

## 1. The `if` statement

An `if` statement checks a condition.  
If the condition is **true**, the code inside the `if` block runs.

Example:
```d
if (temperature > 100)
{
    writeln("Too hot!");
}
```

If the condition is **false**, the block is skipped.

---

## 2. The `else` statement

An `else` block runs when the `if` condition is **false**.

Example:
```d
if (score >= 60)
{
    writeln("Pass");
}
else
{
    writeln("Fail");
}
```

Only one of the two blocks runs.

---

## 3. `else if` chains

You can check multiple conditions in order using `else if`.

Example:
```d
if (n < 0)
{
    writeln("Negative");
}
else if (n == 0)
{
    writeln("Zero");
}
else
{
    writeln("Positive");
}
```

The first true condition wins.  
Only one block runs.

---

## 4. Conditions must be boolean

The expression inside `if ( ... )` must evaluate to a **bool**:

- `true` → run the block  
- `false` → skip the block  

Examples of valid conditions:
```d
x == 10
x > y
flag
count != 0
```

---

## 5. D allows C‑style predicates (but best practice is explicit booleans)

D permits C‑style predicates such as:

```d
if (x)        // allowed
if (!x)       // allowed
```

These work because any non‑zero value converts to `true`, and zero converts to `false`.

However, **best practice in D is to use explicit boolean expressions**, because they are clearer, safer, and easier to read:

```d
if (x != 0)   // best practice
if (flag)     // best practice
```

Explicit booleans make intent obvious and prevent accidental truthiness errors.

---

## 6. Nested `if` statements are allowed, but discouraged

D supports nested `if` statements:

```d
if (a)
{
    if (b)
    {
        writeln("Both true");
    }
}
```

This works, but it creates deep indentation and makes logic harder to follow.

**Best practice is to avoid nesting and use a single, flat chain:**

```d
if (a && b)
{
    writeln("Both true");
}
else if (a)
{
    writeln("Only a is true");
}
else if (b)
{
    writeln("Only b is true");
}
else
{
    writeln("Neither is true");
}
```

A flat `if – else if – else` structure is easier to read, easier to maintain, and avoids the “pyramid of doom.”

---

## 7. Selection controls program flow

Selection is one of the three basic control structures:

- **sequence** → run statements in order  
- **selection** → choose one path  
- **iteration** → repeat a block  

Selection lets programs react to values and make decisions.

---

## 8. Why selection matters

Selection is essential for:

- branching logic  
- input validation  
- error checking  
- state changes  
- decision‑making  
- controlling program behavior  

Without selection, every program would run the same way every time.

---

## See also

- glossary/boolean.md  
- glossary/comparison.md  
- glossary/iteration.md  
- glossary/sequence.md
