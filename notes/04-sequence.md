# 04 — Sequence

This lesson teaches the most fundamental rule of programming:

A program runs **one statement after another**, in order.  
This is called **sequence**.

Every program the student has written so far uses sequence, even if they did not know the name.

Sequence is the backbone of all control flow.  
Later lessons will add branches and loops, but they all build on this idea.

---

## 1. What is sequence?

Sequence means:
- the first statement runs  
- then the second  
- then the third  
- and so on  

The computer follows the order written in the source file.

Example:
```
// exercises/01-lessons/04-sequence/basic-sequence/app.d
write ("A");
write ("B");
writeln ("C");
```

This prints:
```
ABC
```

The output matches the order of the statements.

---

## 2. Sequence with variables

Sequence becomes more interesting when variables are involved.

Example:
```
// exercises/01-lessons/04-sequence/variables-sequence/app.d
int n = 3;              // declare and initialize
writeln ("n = ", n);    // print the value
n = 10;                 // assign a new value
writeln ("n = ", n);    // print the new value
```

This demonstrates:
- declaration  
- initialization  
- assignment  
- printing  

All happening in sequence.

The second `writeln` sees the updated value because it runs **after** the assignment.

---

## 3. Sequence with input

Sequence also controls when input happens.

Example:
```
// exercises/01-lessons/04-sequence/input-sequence/app.d
write ("Enter a word: ");
string word = readln ();        // input happens here
writeln ("You typed: ", word);  // output happens after input
```

The program:
1. prints the prompt  
2. waits for the user  
3. prints the result  

The order matters.  
If you swapped the statements, the program would behave incorrectly.

---

## 4. Sequence is strict

Sequence is not flexible.  
The computer does **exactly** what you write, in the order you write it.

Example:
```
// exercises/01-lessons/04-sequence/strict-sequence/app.d
writeln ("First");
writeln ("Second");
writeln ("Third");
```

The output will always be:
```
First
Second
Third
```

Never:
```
Second
Third
First
```

Never:
```
Third
First
Second
```

Sequence is predictable.

---

## 5. Why sequence matters

Sequence is the foundation for everything that comes later:

- decisions  
- loops  
- functions  
- structs  
- arrays  
- formatting  
- algorithms  

All of these rely on understanding **what happens first**, **what happens next**, and **what happens last**.

If the student understands sequence, they can understand any control flow structure.

---

## 6. Common beginner mistakes

### Mistake 1: Expecting output before the statement runs
Beginners sometimes think the computer “knows” what they want.

Example:
```
// exercises/01-lessons/04-sequence/mistake-1/app.d
writeln ("Result: ", result);   // wrong: result not declared yet
int result = 5;
```

This will not compile.  
Sequence requires the variable to be declared **before** it is used.

---

### Mistake 2: Expecting assignment to affect earlier output
Example:
```
// exercises/01-lessons/04-sequence/mistake-2/app.d
int n = 3;
writeln ("n = ", n);   // prints 3
n = 10;
```

The first `writeln` cannot “see” the future assignment.  
Sequence is not retroactive.

---

### Mistake 3: Thinking input happens automatically
Example:
```
// exercises/01-lessons/04-sequence/mistake-3/app.d
string name;
writeln ("Hello, ", name);   // name has no value yet
name = readln ();
```

Input must happen **before** the variable is used.

---

## 7. Hydratable runnable examples

All examples in this lesson have hydratable project paths:

- `exercises/01-lessons/04-sequence/basic-sequence/app.d`  
- `exercises/01-lessons/04-sequence/variables-sequence/app.d`  
- `exercises/01-lessons/04-sequence/input-sequence/app.d`  
- `exercises/01-lessons/04-sequence/strict-sequence/app.d`  
- `exercises/01-lessons/04-sequence/mistake-1/app.d`  
- `exercises/01-lessons/04-sequence/mistake-2/app.d`  
- `exercises/01-lessons/04-sequence/mistake-3/app.d`  

The student can:
- run  
- debug  
- modify  
- experiment  

This is essential for learning how sequence controls program behavior.

---

## 8. Master example reference

The dashboard should link to:

```
master-examples/04-sequence/app.d
```

This example demonstrates:
- printing  
- variables  
- input  
- assignment  
- strict ordering  

---

## 9. Glossary additions

This lesson introduces several important terms:

- sequence  
- order of execution  
- statement  
- strict ordering  

Each should have its own glossary entry.

---

## 10. Summary

- A program runs one statement after another.  
- Sequence controls everything the program does.  
- Variables follow sequence.  
- Input follows sequence.  
- Output follows sequence.  
- Mistakes happen when the student expects the computer to ignore sequence.  
- Every example has a hydratable project.  

Sequence is the backbone of all programming in D.
