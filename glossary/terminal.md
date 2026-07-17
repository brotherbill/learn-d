# Terminal

A **terminal** is a program that provides a text interface to your computer.  
It shows characters on the screen and sends characters you type back to the program that is running.

A terminal is **not** the same thing as the **console**.  
The console is the *device* your program writes text to and reads text from.  
The terminal is the *program* that gives you access to that device.

---

## 1. What a terminal does

A terminal:

- displays characters your program prints  
- sends characters you type to your program  
- shows the **cursor** (the position where the next character will appear)  
- manages the window, colors, fonts, and scrolling  
- may support advanced features (history, tabs, copy/paste, resizing)

The terminal is the environment where your console output appears.

---

## 2. Terminal vs console

The **console** is the simple text input/output device your program uses.  
It is a concept: “the place characters go” and “the place characters come from.”

The **terminal** is a program that *provides* access to the console.

Examples of terminals:

- Windows Terminal  
- macOS Terminal  
- GNOME Terminal  
- Konsole  
- xterm  

These programs show the console output on the screen and let you type input.

---

## 3. Terminal vs shell

A terminal is **not** a shell.

- The **terminal** displays text and handles keyboard input.  
- The **shell** interprets commands (like `ls`, `cd`, `dmd`, `./a.out`).

The terminal runs the shell.  
The shell runs your program.  
Your program writes to the console.  
The terminal displays the console output.

These are three different layers.

---

## 4. The cursor

The terminal tracks the **cursor**:  
the position where the next character will appear or be typed.

The console itself does not track the cursor.  
The terminal does.

When your program prints `\n`, the terminal moves the cursor to the next line.

See `cursor.md` for details.

---

## 5. Terminals can do more than the console

The console is simple: it prints characters in order.

Terminals may add features:

- color  
- bold / underline  
- cursor movement  
- clearing the screen  
- resizing  
- scrollback  
- tabs  
- copy/paste  

These features are provided by the terminal, not by the console.

Your program can use special codes (ANSI escape codes) to control the terminal,  
but Learn‑D does not use these in beginner examples.

---

## 6. Why terminals matter

Terminals are important because:

- they let you run programs  
- they show console output  
- they let you type input  
- they provide a simple, predictable environment  
- they make examples concrete for students

Every Learn‑D example runs inside a terminal window.

---

## See also

- glossary/console.md  
- glossary/cursor.md  
- glossary/device.md  
- glossary/newline.md  
- glossary/shell.md  
- glossary/write.md  
- glossary/writeln.md  
- glossary/readln.md
