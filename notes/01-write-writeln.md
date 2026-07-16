# 01 — write / writeln

This lesson teaches how D prints text to the console.  
It introduces literals, explains how output behaves, and shows how to use `write` and `writeln` correctly.

---

## 1. Literals

A literal is a value written directly in your code.  
You will use three kinds of literals in this lesson.

### Character literal
A single character inside single quotes:
```
// exercises/01-lessons/01-write-writeln/literal-char/app.d
'w'
```

### Integer literal
A whole number:
```
// exercises/01-lessons/01-write-writeln/literal-int/app.d
42
```

### String literal
Text inside double quotes:
```
// exercises/01-lessons/01-write-writeln/literal-string/app.d
"I can learn D"
```

Literals are the simplest building blocks of output.

---

## 2. write vs writeln

### `write`
Prints text **without** a newline.  
The next output appears on the **same line**.

### `writeln`
Prints text **with** a newline.  
The next output appears on the **next line**.

Example:
```
// exercises/01-lessons/01-write-writeln/write-vs-writeln/app.d
write ("Hello");
writeln ("World");
```

Notice the **space before the parenthesis**.  
This is a style rule for this course.

---

## 3. Lazy write (buffering) and flushing

D uses a buffer for console output.  
This means output is collected internally before being shown on the screen.

When printing a prompt before `readln`, the buffer is **automatically flushed**.  
So this will always show the prompt:

```
// exercises/01-lessons/01-write-writeln/prompt-basic/app.d
write ("Enter your name: ");
string name = readln ();
```

### Optional explicit flush

Using `stdout.flush` can make debugging more explicit.  
It guarantees that nothing is hiding in the buffer.

```
// exercises/01-lessons/01-write-writeln/prompt-flush/app.d
write ("Enter your name: ");
stdout.flush ();
string name = readln ();
```

This is not required, but it is allowed and sometimes helpful.

---

## 4. Variadic functions

`write` and `writeln` are **variadic** functions.  
This means they accept **any number of arguments**.

Example:
```
// exercises/01-lessons/01-write-writeln/variadic-basic/app.d
writeln ("A", "B", "C");
```

### Important
Some variadic functions require all arguments to be the **same type**.  
`write` and `writeln` do **not**.  
They can mix and match types freely:

```
// exercises/01-lessons/01-write-writeln/variadic-mixed/app.d
writeln ("Answer: ", 42, " and letter ", 'd');
```

### D does NOT add spaces automatically

This:
```
// exercises/01-lessons/01-write-writeln/no-spaces/app.d
writeln ("A", "B", "C");
```

prints:
```
ABC
```

If you want spaces, you must include them yourself:

```
// exercises/01-lessons/01-write-writeln/with-spaces/app.d
writeln ("A ", "B ", "C");
```

---

## 5. Master example reference

The dashboard should link to:

```
master-examples/01-write-writeln/app.d
```

This example demonstrates:
- literals  
- write  
- writeln  
- spacing  
- variadic printing  

---

## 6. Glossary additions

This lesson introduces several important terms:

- literal  
- variadic  
- argument  
- parameter  
- buffer  

Each should have its own glossary entry.

---

## 7. Summary

- Literals are direct values (`'w'`, `42`, `"I can learn D"`).  
- `write` prints without newline.  
- `writeln` prints with newline.  
- Output is buffered; `stdout.flush` makes it explicit.  
- `write` and `writeln` are variadic and accept mixed types.  
- D does not add spaces between arguments.  
- Always use a space before the `(` in this course.

This is the foundation of all console output in D.
