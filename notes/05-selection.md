# 05 — Selection

This lesson teaches how D makes decisions.  
It introduces `if`, `else`, and `else if`, along with basic boolean expressions and predicates.

Selection lets your program choose between different paths based on conditions.

---

## 1. What is selection?

Selection means:
- the program checks a condition  
- if the condition is true, one block of code runs  
- if the condition is false, a different block may run  

Sequence still applies — selection simply chooses *which* sequence to follow.

---

## 2. Boolean expressions and predicates

A **boolean expression** is something that is either true or false.

A boolean expression used inside an `if` statement is called a **predicate**.

A predicate answers a yes/no question such as:
- “Is `n` greater than 5?”  
- “Is the score at least 90?”  
- “Are these two values equal?”  

You will use these comparison operators:

- `==` equal  
- `!=` not equal  
- `<` less than  
- `>` greater than  
- `<=` less than or equal  
- `>=` greater than or equal  

Example:
```
// exercises/01-lessons/05-selection/boolean-basic/app.d
int n = 10;
writeln (n > 5);    // prints true
writeln (n == 3);   // prints false
```

Boolean expressions (predicates) are the foundation of selection.

---

## 3. The `if` statement

`if` runs a block of code only when the predicate is true.

Example:
```
// exercises/01-lessons/05-selection/if-basic/app.d
int n = 7;

if (n > 5)
{
    writeln ("n is greater than 5");
}

writeln ("Done");
```

If the predicate is false, the block is skipped.

---

## 4. The `else` statement

`else` runs when the `if` predicate is false.

Example:
```
// exercises/01-lessons/05-selection/if-else-basic/app.d
int n = 3;

if (n > 5)
{
    writeln ("n is greater than 5");
}
else
{
    writeln ("n is not greater than 5");
}

writeln ("Done");
```

Only one block runs.

---

## 5. The `else if` chain

`else if` lets you check multiple predicates in order.

Example:
```
// exercises/01-lessons/05-selection/else-if-basic/app.d
int score = 85;

if (score >= 90)
{
    writeln ("Grade: A");
}
else if (score >= 80)
{
    writeln ("Grade: B");
}
else
{
    writeln ("Grade: C or lower");
}
```

The program checks predicates **top to bottom**.  
The first true predicate wins.  
Remaining conditions are ignored.

---

## 6. Single‑statement `if` (non‑block form)

D allows an `if` to control **exactly one statement** without braces:

```
// exercises/01-lessons/05-selection/single-statement-if/app.d
int n = 5;

if (n == 5)
    writeln ("n is five");

writeln ("Done");
```

### Why this is dangerous

Beginners often indent multiple lines, believing the indentation creates a block:

```
// exercises/01-lessons/05-selection/indentation-trap/app.d
int n = 5;

if (n == 5)
    writeln ("n is five");
    writeln ("This line ALWAYS runs");   // indentation lies
```

The compiler sees:

- The `if` controls **only the first line**  
- The second line is **not** part of the `if`  
- Indentation has **no meaning** to the compiler  

### Dual Truth

This creates **Dual Truth**:

- **Developer truth:**  
  “Both lines are inside the `if` because I indented them.”

- **Compiler truth:**  
  “Only the first line is inside the `if`. The second line always runs.”

Dual Truth is a major source of bugs in beginner code.

### Course rule

To prevent Dual Truth:

**Always use braces**, even for a single statement.

This keeps the mental model clean and prevents accidental mis‑indentation.

---

## 7. Why nested `if` statements are not introduced yet

Nested `if` statements look simple, but they introduce several cognitive hazards:

### 1. Multiple levels of indentation  
Beginners confuse indentation with meaning.  
Nested `if` multiplies this problem.

### 2. Dual Truth becomes harder to detect  
When two or three `if` statements are stacked, it becomes unclear which predicate controls which statement.

### 3. Harder to debug  
Beginners struggle to understand:
- which predicate failed  
- which block ran  
- which block was skipped  

### 4. Mental overload  
At this stage, the student is still learning:
- sequence  
- variables  
- input  
- basic selection  

Nested selection adds too much complexity too early.

### Course rule

Nested `if` statements will be introduced **after** the student has mastered:
- clean block structure  
- braces  
- predicates  
- else‑if chains  
- strict sequence  

This ensures the student has a solid foundation before adding deeper control flow.

---

## 8. Selection with input

Selection becomes more useful when combined with input.

Example:
```
// exercises/01-lessons/05-selection/input-selection/app.d
write ("Enter a number: ");
string text = readln ();

int n = 0;          // placeholder until number conversion is taught later
n = 5;              // temporary fixed value for demonstration

if (n == 5)
{
    writeln ("You typed 5");
}
else
{
    writeln ("You typed something else");
}
```

Because number conversion has not been introduced yet, this example uses a fixed value.  
Later lessons will show how to convert text into an integer safely.

---

## 9. Sequence still matters

Selection does not replace sequence — it *uses* sequence.

Example:
```
// exercises/01-lessons/05-selection/sequence-selection/app.d
int n = 10;

writeln ("Checking...");
if (n > 5)
{
    writeln ("n is large");
}

writeln ("Done");
```

The order is:
1. print “Checking…”  
2. evaluate the predicate  
3. maybe print “n is large”  
4. print “Done”  

Selection chooses *which* statements run, but sequence determines *when* they run.

---

## 10. Common beginner mistakes

### Mistake 1: Using `=` instead of `==`
```
// exercises/01-lessons/05-selection/mistake-1/app.d
int n = 5;

if (n = 10)     // wrong: assignment, not comparison
{
    writeln ("This will not compile");
}
```

`=` assigns.  
`==` compares.

---

### Mistake 2: Expecting multiple blocks to run
```
// exercises/01-lessons/05-selection/mistake-2/app.d
int n = 7;

if (n > 5)
{
    writeln ("Greater than 5");
}
else if (n > 3)
{
    writeln ("Greater than 3");
}
```

Only the first true predicate runs.  
The second block is ignored.

---

### Mistake 3: Forgetting braces
```
// exercises/01-lessons/05-selection/mistake-3/app.d
int n = 4;

if (n > 5)
    writeln ("Greater");   // only this line is controlled by the if

writeln ("Done");          // this always runs
```

Braces make the block clear and safe:

```
if (n > 5)
{
    writeln ("Greater");
}
```

---

## 11. Hydratable runnable examples

All examples in this lesson have hydratable project paths:

- `exercises/01-lessons/05-selection/boolean-basic/app.d`  
- `exercises/01-lessons/05-selection/if-basic/app.d`  
- `exercises/01-lessons/05-selection/if-else-basic/app.d`  
- `exercises/01-lessons/05-selection/else-if-basic/app.d`  
- `exercises/01-lessons/05-selection/single-statement-if/app.d`  
- `exercises/01-lessons/05-selection/indentation-trap/app.d`  
- `exercises/01-lessons/05-selection/input-selection/app.d`  
- `exercises/01-lessons/05-selection/sequence-selection/app.d`  
- `exercises/01-lessons/05-selection/mistake-1/app.d`  
- `exercises/01-lessons/05-selection/mistake-2/app.d`  
- `exercises/01-lessons/05-selection/mistake-3/app.d`  

The student can:
- run  
- debug  
- modify  
- experiment  

This is essential for learning how selection controls program behavior.

---

## 12. Master example reference

The dashboard should link to:

```
master-examples/05-selection/app.d
```

This example demonstrates:
- boolean expressions  
- predicates  
- if  
- else  
- else if  
- strict ordering  
- correct block structure  
- safe use of braces  

---

## 13. Glossary additions

This lesson introduces several important terms:

- selection  
- condition  
- predicate  
- boolean expression  
- comparison operator  
- if  
- else  
- else if  
- Dual Truth  

Each should have its own glossary entry.

---

## 14. Summary

- Selection chooses which block of code runs.  
- A predicate is a boolean expression used in a decision.  
- `if` runs a block when the predicate is true.  
- `else` runs when the predicate is false.  
- `else if` checks additional predicates.  
- Only one block in an `if` / `else if` / `else` chain runs.  
- Single‑statement `if` is legal but dangerous.  
- Indentation does not create blocks; braces do.  
- Dual Truth happens when indentation suggests meaning the compiler does not follow.  
- Nested `if` is postponed to avoid cognitive overload.  
- Every example has a hydratable project.  

Selection is the foundation of decision‑making in D.
