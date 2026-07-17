# Console

The **console** is the simple text device your program uses to show characters (output)  
and to read characters typed by the user (input).

Historically, the console comes from the **teletype** — a physical machine that printed
characters on paper as you typed, and sent typed characters back to the computer.
Modern consoles behave the same way, just without the paper.

---

## 1. What the console is

Think of the console as a **text device**:

- it can **display** characters your program prints  
- it can **receive** characters the user types  

It is not a graphics screen.  
It is not a window manager.  
It is not a terminal emulator (see `terminal.md`).

Modern terminal windows (see `terminal.md`) simply provide access to the console.

The console is a **device that handles text input and text output**.

---

## 2. Console output

D provides two functions for writing text to the console:

- `write` — prints characters exactly as given  
- `writeln` — prints characters and then prints a newline (`\n`)

Example:
```d
write ("Hello");
writeln (" world");
```

Console output:
```
Hello world
```

---

## 3. The newline character

The console understands the special character `\n`.

### Why does `\n` need two characters?

Because `\` is the **escape character**.

The escape character tells the language:

    “The next character is not literal text. It has a special meaning.”

You cannot type a newline directly inside a string — pressing Enter would end the string.
So D uses an escape sequence:

- `\` = “this is special”
- `n` = “newline”

Together they form `\n`.

Escape sequences let you represent characters that cannot be typed directly.

### Then how do you write a literal backslash?

Since `\` begins an escape sequence, you must escape the backslash itself:

```d
writeln ("\\");
```

Console output:
```
\
```

The first backslash starts the escape sequence.  
The second backslash means “the literal backslash character.”

### Example with newline

```d
writeln ("Line 1\nLine 2");
```

Console output:
```
Line 1
Line 2
```

---

## 4. The console prints characters exactly

The console does **not** add spaces for you.

If you print:
```d
writeln ('A', 999);
```

The console prints:
```
A999
```

If you want spaces, you must print them explicitly:

```d
writeln ('A', ' ', 999);
```

Console output:
```
A 999
```

The console prints **exactly** what you tell it to print.

---

## 5. Console input

The console is also an **input device**.

Functions like `readln` read characters typed by the user.

Example:
```d
string line = readln ();
```

This reads one line of text from the console.

The console is therefore **bidirectional**:

- output: your program prints characters  
- input: your program receives characters  

---

## 6. The console is sequential

The console prints characters in the order you send them.

Example:
```d
write ('D');
write (999);
writeln ("I can learn D");
```

Console output:
```
D999I can learn D
```

The console does not reorder anything.  
It does not interpret numbers.  
It does not format text.

It just prints characters.

---

## 7. Console vs terminal vs cursor vs device

The console is a **concept**: a text input/output device.

A **terminal** (see `terminal.md`) is a program that *provides* a console-like interface.

A **cursor** (see `cursor.md`) is the position where the next character will appear or be typed.
The terminal tracks the cursor; the console is the conceptual text device underneath.

A **device** (see `device.md`) is any hardware or virtual component your program interacts with.
The console is the simplest text device.

---

## 8. Why the console matters

The console is the easiest way to:

- show results  
- demonstrate examples  
- teach concepts  
- debug programs  
- verify correctness  

Every Learn‑D master example begins with console output because it is the most concrete way
for students to see what the program does.

---

## See also

- glossary/write.md  
- glossary/writeln.md  
- glossary/readln.md  
- glossary/terminal.md  
- glossary/cursor.md  
- glossary/device.md  
- glossary/literal.md  
- glossary/variable.md  
- glossary/defined-behavior.md  
- glossary/undefined-behavior.md
