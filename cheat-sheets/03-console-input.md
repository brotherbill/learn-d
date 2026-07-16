# Cheat Sheet — Console Input

Quick review of Lesson 03.

---

## 1. Reading input

Use `readln ()` to read a line of text from the console.

```d
string text = readln ();
```

This stores whatever the user typed (including the newline character) into `text`.

---

## 2. Prompt + input

```d
write ("Enter your name: ");
string name = readln ();
writeln ("Hello, ", name);
```

Output example:
```
Enter your name: Zoroaster
Hello, Zoroaster
```

---

## 3. Input is always a string

Whatever the user types becomes a **string**.

Examples:
- `"42"`  
- `"hello"`  
- `"3.14"`  
- `"Benny"`  

All are strings.

Number conversion comes later.

---

## 4. Trimming the newline

`readln ()` includes the newline at the end.

For now, beginners ignore it.  
Later lessons introduce trimming.

---

## 5. Common beginner mistakes

### Forgetting to prompt
```d
string name = readln ();   // user sees nothing
```

### Forgetting quotes in the prompt
```d
write (Enter your name: );   // error
```

### Expecting a number
```d
int n = readln ();   // wrong: readln returns a string
```

Correct approach comes in the number‑conversion lesson.

---

## 6. Hydratable example

Path:
```
exercises/01-lessons/03-input/basic/app.d
```

Example:
```d
write ("Type something: ");
string text = readln ();
writeln ("You typed: ", text);
```

---

## 7. Summary

- `readln ()` reads a line of text  
- Input is always a string  
- Prompt with `write ()` or `writeln ()`  
- Store the result in a variable  
- Number conversion comes later  

Console input lets your program receive information from the user.
