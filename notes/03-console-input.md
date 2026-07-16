# 03 — Console Input

This lesson teaches how D reads text typed by the user.  
It introduces `readln`, explains how input flows into variables, and provides simple, beginner‑safe examples.

---

## 1. What is console input?

Console input is text the user types while the program is running.

Your program can:
- display a prompt  
- wait for the user to type  
- read what they typed  
- store it in a variable  
- print it back or use it later  

Input lets your program interact with the user.

---

## 2. The `readln` function

`readln` reads a **full line of text** from the user.

Example:
```
// exercises/01-lessons/03-console-input/readln-basic/app.d
string text = readln ();
```

This means:
- wait for the user to type  
- capture everything up to and including the newline that the user typed  
- store it in the variable `text`  

### Important
`readln` returns a **string**, even if the user typed a number.  
Number conversion will be taught later.

### Formatting note
Using `readln` directly creates some output formatting issues.  
For example, the newline typed by the user becomes part of the returned string.

At this point in the lessons, we are happy enough to write and read from the console.  
We will deal with niceties such as clean formatted output later in the course.

---

## 3. Printing a prompt

A prompt tells the user what to type.

Example:
```
// exercises/01-lessons/03-console-input/prompt-basic/app.d
write ("Enter your name: ");
string name = readln ();
writeln ("Hello, ", name);
```

### Why this works
`write` prints the prompt.  
`readln` waits for the user.  
`writeln` prints the result.

This example uses only features already introduced:
- write  
- writeln  
- string literal  
- variable  

---

## 4. Buffering and flushing (beginner‑safe version)

D uses an internal **output buffer**.  
Normally, you do not need to think about it.

When printing a prompt before `readln`, D automatically flushes the buffer.  
So this always works:

```
// exercises/01-lessons/03-console-input/prompt-flush-safe/app.d
write ("Enter a word: ");       // writes to buffer
string word = readln ();        // flushes buffer, then reads what the user typed
writeln ("You typed: ", word);
```

### Optional explicit flush
Advanced debugging sometimes uses:

```
// exercises/01-lessons/03-console-input/explicit-flush/app.d
write ("Debug checkpoint");     // writes to buffer
stdout.flush ();                // forces buffer to appear immediately
```

This forces output to appear immediately.  
It is optional and not required for this lesson.

---

## 5. Variables and input (review)

Input is stored in a variable.

Example:
```
// exercises/01-lessons/03-console-input/store-input/app.d
write ("Enter a color: ");
string color = readln ();
writeln ("Your color is ", color);
```

This reinforces:
- declaration  
- initialization  
- assignment  
- printing variables  

---

## 6. Input is always a string (for now)

Even if the user types:

```
42
```

`readln` returns:

```
"42\n"
```

The newline is included.

We will convert text to numbers later, using beginner‑safe tools.

For now:
- read input as a string  
- store it  
- print it  

This keeps the lesson focused on **input**, not conversion.

---

## 7. Hydratable runnable examples

All examples in this lesson have hydratable project paths:

- `exercises/01-lessons/03-console-input/readln-basic/app.d`  
- `exercises/01-lessons/03-console-input/prompt-basic/app.d`  
- `exercises/01-lessons/03-console-input/prompt-flush-safe/app.d`  
- `exercises/01-lessons/03-console-input/store-input/app.d`  
- `exercises/01-lessons/03-console-input/explicit-flush/app.d`  

The student can:
- run  
- debug  
- modify  
- experiment  

This is essential for learning how input flows through a program.

---

## 8. Master example reference

The dashboard should link to:

```
master-examples/03-console-input/app.d
```

This example demonstrates:
- prompting  
- reading input  
- storing input  
- printing input  

---

## 9. Glossary additions

This lesson introduces several important terms:

- console input  
- prompt  
- readln  
- buffer  
- flush  

Each should have its own glossary entry.

---

## 10. Summary

- `readln` reads a full line of user input.  
- Input is stored in a variable as a string.  
- Prompts guide the user.  
- Buffering is automatic; flushing is optional.  
- Using `readln` directly includes the newline; formatting niceties come later.  
- Every example has a hydratable project.  
- Number conversion will be taught later.  

This is the foundation of reading user input in D.
