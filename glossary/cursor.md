# Cursor

The **cursor** is the position in the terminal where the next character will appear or be typed.

The cursor is **not** part of your D program.  
The cursor is controlled by the **terminal**, not by the console and not by your code.

Your program prints characters to the console.  
The terminal displays those characters and moves the cursor accordingly.

---

## 1. What the cursor does

The cursor marks the current text position.  
When your program prints a character:

- the terminal displays that character  
- the terminal moves the cursor one position to the right  

When your program prints a newline (`\n`):

- the terminal moves the cursor to the beginning of the next line  

The console itself does not track the cursor.  
The terminal does.

---

## 2. Cursor movement from your program

Your D program can move the cursor only by printing characters:

- printing normal characters moves the cursor right  
- printing `\n` moves the cursor down to the next line  
- printing `\t` moves the cursor to the next tab stop  

These are the only cursor movements used in beginner Learn‑D.

Advanced programs can use ANSI escape codes to move the cursor in more complex ways,  
but Learn‑D does not use these in beginner examples.

---

## 3. Cursor movement from the terminal

The terminal itself can move the cursor when you:

- resize the window  
- scroll  
- click to reposition the text caret  
- use arrow keys in the shell  
- use backspace or delete  
- run commands that print output  

These actions are outside your D program.

---

## 4. Cursor and the console

The **console** is the simple text input/output device your program uses.  
It does not know about:

- the terminal window  
- the cursor position  
- fonts  
- colors  
- scrollback  

Your program prints characters.  
The terminal decides where they appear.

---

## 5. Why the cursor matters

The cursor matters because:

- it shows where output will appear  
- it shows where input will be typed  
- it makes console programs predictable  
- it helps students understand how `\n` works  
- it makes examples concrete and visible

Every Learn‑D example uses the cursor implicitly when printing text.

---

## See also

- glossary/terminal.md  
- glossary/console.md  
- glossary/newline.md  
- glossary/write.md  
- glossary/writeln.md  
- glossary/readln.md
