# Shell

A **shell** is a program that reads the commands you type and runs them.  
It is the command interpreter that sits between you and the operating system.

The shell is **not** the terminal.  
The terminal displays text and handles keyboard input.  
The shell interprets the text as commands.

---

## 1. What the shell does

A shell:

- reads the characters you type  
- interprets them as commands  
- runs programs  
- prints the results  
- lets you navigate folders  
- lets you run the D compiler (`dmd`)  
- lets you run your compiled programs (`./app.out` or `app.exe` or `app`)

The shell is the “command language” of your computer.

---

## 2. Shell vs terminal

These two are often confused:

### Terminal
- shows characters on the screen  
- sends characters you type  
- manages the window  
- tracks the cursor  

### Shell
- interprets commands  
- runs programs  
- prints results  

The terminal runs the shell.  
The shell runs your program.  
Your program writes to the console.  
The terminal displays the console output.

Three different layers.

---

## 3. Examples of shells

Common shells include:

- Bash  
- Zsh  
- Fish  
- PowerShell  
- CMD.exe  

These are all shells.  
They all run inside a terminal window.

---

## 4. How the shell runs your D programs

When you type:

```
dmd hello.d
```

The shell:

1. reads the characters  
2. interprets them as a command  
3. runs the compiler  
4. prints any output from the compiler  

Then you run your program:

```
./hello
```

The shell:

1. starts your program  
2. sends your keyboard input to it  
3. prints your program’s console output  

The shell is the “traffic controller” for commands and programs.

---

## 5. The shell is not part of your D program

A beginner D program does **not** know about the shell.  
It only knows about the **console**: the simple text input/output device.

The shell is outside your program:

- the terminal runs the shell  
- the shell runs your program  
- your program writes to the console  
- the terminal displays the console output

This is the normal flow for all Learn‑D examples.

### Advanced note

A D program *can* ask the shell to run commands by calling functions such as:

- `system`  
- `spawnProcess`  
- `pipeProcess`

These functions let your program execute external commands, but this is an **advanced topic** and not part of beginner Learn‑D.

---

## 6. Why the shell matters

The shell is important because:

- it is how you run the compiler  
- it is how you run your programs  
- it is how you navigate folders  
- it is how you see errors  
- it is how you interact with your computer at a low level  

Every Learn‑D example is run from a shell inside a terminal window.

---

## See also

- glossary/terminal.md  
- glossary/console.md  
- glossary/cursor.md  
- glossary/device.md  
- glossary/write.md  
- glossary/writeln.md  
- glossary/readln.md
