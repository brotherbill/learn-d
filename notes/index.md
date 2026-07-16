# Learn D — Course Index

This is the master index for the Learn D curriculum.  
Each lesson builds intentionally on the previous one, introducing one new concept at a time with hydratable examples and correctness‑first explanations.

The course emphasizes:
- clear mental models  
- predictable behavior  
- beginner‑safe constructs  
- intentional skill development  
- avoidance of premature complexity  

---

## 01 — Output

The first lesson teaches how to produce output using `writeln`.  
Students learn how programs communicate results and how sequence controls execution order.

Path: `notes/01-output.md`

---

## 02 — Variables

This lesson introduces variables as named storage locations.  
Covers declaration, assignment, and basic types.  
Establishes the mental model of “boxes that hold values.”

Path: `notes/02-variables.md`

---

## 03 — Input

Students learn how to read text from the user using `readln`.  
Covers input as a source of data and reinforces sequence.

Path: `notes/03-input.md`

---

## 04 — Sequence

This lesson formalizes the idea that programs run in order, top to bottom.  
Students learn how statements execute deterministically and how sequence interacts with input and output.

Path: `notes/04-sequence.md`

---

## 05 — Selection

Introduces decision‑making using `if`, `else`, and `else if`.  
Covers predicates, boolean expressions, comparison operators, and Dual Truth.  
Nested `if` statements are intentionally deferred.

Path: `notes/05-selection.md`

---

## 06 — Loop (while)

Students learn repetition using the `while` loop.  
Focuses on the three intentional skills:

1. initialize  
2. predicate  
3. increment  

Covers zero‑iteration loops, infinite loops, OFF‑BY‑1 (fencepost errors), and Dual Truth.  
Other loop forms (`for`, `do‑while`, `foreach`) are deferred.

Path: `notes/06-loop.md`

---

## 07 — Dynamic Arrays

Introduces dynamic arrays as resizable sequences of values.  
Covers declaration, appending with `~=`, indexing, `.length`, modification, and looping over arrays.  
Fixed‑length arrays are intentionally deferred due to their additional rules and complexity.

Path: `notes/07-dynamic-arrays.md`

---

## Upcoming Lessons

These lessons will appear later in the curriculum, after the student has mastered the fundamentals above:

- number conversion  
- strings  
- functions  
- fixed‑length arrays  
- slices  
- modules  
- error handling  
- structs  
- memory model  
- compilation model  

Each topic will be introduced only when the student has the necessary foundation.

---

## Hydratable Examples

Every lesson includes runnable examples under:

```
exercises/01-lessons/<lesson-name>/
```

These examples are designed for:
- running  
- debugging  
- modifying  
- experimenting  

Hydration ensures students learn by doing.

---

## Master Examples

Each lesson also includes a master example under:

```
master-examples/<lesson-name>/app.d
```

These demonstrate the lesson’s concepts in a clean, complete program.

---

## Glossary

The glossary contains precise definitions for all course terms, including:

- sequence  
- variable  
- input  
- output  
- predicate  
- boolean expression  
- Dual Truth  
- loop  
- initialization  
- increment  
- fencepost error  
- dynamic array  
- index  
- length  

The glossary grows as the course progresses.

---

## Course Philosophy

The Learn D curriculum is built on these principles:

- correctness first  
- clarity over cleverness  
- one concept at a time  
- predictable behavior  
- intentional skill development  
- no premature complexity  
- hydratable examples everywhere  

This ensures students build a strong foundation before encountering advanced features.

