# 02 — Variables

This lesson teaches how D stores values in named boxes called variables.  
It explains declaration, initialization, assignment, naming rules, and how variables interact with console output.

---

## 1. What is a variable?

A variable is a named box that holds a value.

You can:
- declare the box  
- initialize it with a starting value  
- assign a new value later  
- read the value  
- print the value  

Variables let your program remember information.

---

## 2. Declaration

Declaration creates the box.

Example:
```
// exercises/01-lessons/02-variables/declaration-basic/app.d
int n;
```

This means:
- the variable is named `n`
- it holds an integer
- it currently has no meaningful value

You declare a variable once.

---

## 2a. Naming rules (validity)

These rules determine whether a variable name **compiles**.

### Validity rules
1. Names may contain letters, digits, and underscores.  
2. Names cannot start with a digit.  
3. Names cannot contain spaces.  
4. Names cannot contain punctuation (except underscore).  
5. Names cannot be D keywords.

### Positive validity examples
```
// exercises/01-lessons/02-variables/naming-validity-positive/app.d
int speed;
int total_apples;
int user_2;
int _hidden_value;
```

These names all compile.

### Negative validity examples
```
// exercises/01-lessons/02-variables/naming-validity-negative/app.d
int 2_fast;      // starts with digit
int user age;    // contains space
int total$;      // contains punctuation
int int;         // keyword
```

These names do not compile.

---

## 2b. Naming rules (meaning)

These rules determine whether a variable name **communicates intention**.

### Meaning rules
1. The name should describe what the box contains.  
2. The name should reduce the reader’s mental effort.  
3. The name should match the purpose of the variable.  
4. The name should be specific, not vague.

### Positive meaning examples
```
// exercises/01-lessons/02-variables/naming-meaning-positive/app.d
int quotient;
int total_apples;
int speed_limit;
int user_age;
```

These names tell the reader exactly what the box contains.

### Negative meaning examples
```
// exercises/01-lessons/02-variables/naming-meaning-negative/app.d
int x;      // The name x is acceptable in math-heavy code, but not in general programming.
int value;
int data;
int thing;
```

These names force the reader to reverse‑engineer the code.

### Explanation
Naming is not decoration.  
Naming is **communication**.

A variable name should guide the reader toward what the box contains.

If the variable holds a quotient, name it `q` or `quotient`.  
Do not name it `value`, `x`, or `useless_name`.

---

## Why naming matters (production code)

In real software development, the **life cycle of production code** looks like this:

- **20%** of the time is spent writing the initial version.  
- **80%** of the time is spent:
  - fixing bugs  
  - adding features  
  - improving behavior  
  - maintaining the code  

During that 80%, the reader must understand what each variable box contains.

Good names:
- save time  
- reduce confusion  
- prevent bugs  
- make the code self‑explanatory  

Poor names:
- waste the reader’s time  
- force the reader to reverse‑engineer the code  
- hide the purpose of the variable  
- increase the chance of mistakes  

Good naming is a professional skill.  
We start practicing it now.

---

## Pedagogical rule (important)

We intentionally place **all variable declarations at the top of the function**.

This violates modern D style guidelines, but we do it for beginners because:
- it separates “declaring boxes” from “using boxes”  
- it keeps the mental model clean  
- it prevents accidental redeclaration  
- it makes the function easier to scan  
- it reduces cognitive load for new programmers  

Professional placement rules come later.  
For now, clarity wins.

### Meyer’s satire (professional humor)

Dr. Bertrand Meyer once wrote a satire imagining a newspaper article complaining that developers “recklessly read and write variables before they need to.”

The joke is that developers supposedly cannot resist touching variables early, for no reason at all.

In the satire:
- workshops are created to help developers “break the habit”  
- experts warn of “premature variable access disorder”  
- managers panic when developers “touch variables too soon”  

The satire highlights a real tension:
- professionals want declarations close to use  
- but grouping declarations at the top improves readability and scanning  

Our pedagogical rule aligns with Meyer’s humor:
- clarity first  
- organization first  
- predictable structure first  

Later, the student will learn professional placement techniques, as they will see these in the wild.

---

## 3. Initialization

Initialization gives the variable its first value.

Example:
```
// exercises/01-lessons/02-variables/initialization-basic/app.d
int n = 3;
```

This means:
- declare `n`
- set its initial value to `3`

### Important:
If you do not initialize a variable, D will initialize it for you.

Example:
```
// exercises/01-lessons/02-variables/default-initialization/app.d
int n;   // D initializes this to 0
```

### But:
Don’t be lazy. Always initialize your variables.  
It builds good habits, declares your intentions, and prevents confusion.

---

## 4. Assignment

Assignment changes the value stored in the variable.

Example:
```
// exercises/01-lessons/02-variables/assignment-basic/app.d
int n = 3;
n = 10;
```

This means:
- take the existing variable `n`
- replace its value with `10`

You can assign many times.

### Assignment is full and complete
- The prior contents are vaporized.  
- Nothing remains of the old value.  
- No trail is left behind.

### You can assign the same value again
```
// exercises/01-lessons/02-variables/assignment-same-value/app.d
n = 10;
n = 10;
```

This is allowed.

### Types must match
You cannot assign a string to an int:
```
// exercises/01-lessons/02-variables/type-mismatch/app.d
int n;
n = "hello";   // wrong
```

### Redeclaration is wrong
Redeclaring a variable will not compile:
```
// exercises/01-lessons/02-variables/redeclaration-error/app.d
int n = 10;   // declaration
int n = 20;   // wrong: redeclaration
```

Other languages allow this.  
D does not.

---

## 5. Variables and output

You can print variables using `write` or `writeln`.

Example:
```
// exercises/01-lessons/02-variables/output-basic/app.d
int n = 42;
writeln ("n = ", n);
```

Because `writeln` is variadic, you can mix:
- strings  
- integers  
- characters  

All in one call.

---

## 6. Variables and input

Variables often store values read from the user.

Here is a simple example using only features already introduced:

```
// exercises/01-lessons/02-variables/input-demo/app.d
write ("Enter a number: ");
string text = readln ();
writeln ("You typed: ", text);
```

### About `readln ()`
`readln ()` has not been formally introduced yet.

Short explanation:
- `readln ()` lets the user type in their response  
- it returns that text as a string  
- the string is stored in the variable `text`  

A full lesson on input will come later.  
For now, this example shows how a variable can store user‑typed information.

### Hydratable runnable example
Because the path is included directly above the code,  
the dashboard can hydrate this project automatically.

This lets the student:
- run it  
- debug it  
- modify it  
- experiment with variable storage  
- see how input flows into a variable  

### Later lessons
When number conversion is introduced, we will show how to convert text into an integer safely.

For now:
- read input as a string  
- store it in a variable  
- print it  

This keeps the lesson focused on variables, not input processing.

---

## 7. Master example reference

The dashboard should link to:

```
master-examples/02-variables/app.d
```

This example demonstrates:
- declaration  
- initialization  
- assignment  
- printing a variable  

---

## 8. Glossary additions

This lesson introduces several important terms:

- variable  
- declaration  
- initialization  
- assignment  
- name  
- type  
- production code  

Each should have its own glossary entry.

---

## 9. Summary

- A variable is a named box that holds a value.  
- Declaration creates the box.  
- Initialization gives it a starting value.  
- Assignment replaces the value completely.  
- You declare once and assign many times.  
- Names must follow validity rules and meaning rules.  
- Good names matter in real production code.  
- Always initialize your variables.  
- Input is stored as a string for now.  
- Professional style comes later; clarity comes first.

This is the foundation of storing and manipulating data in D.
