# Cheat Sheet — Sequence

Quick review of Lesson 04.

---

## 1. What is sequence?

Sequence means **the program runs top‑to‑bottom**, one statement after another.

It is the simplest control structure:
- first do this  
- then do that  
- then do the next thing  

Every program uses sequence.

---

## 2. Execution order

```d
writeln ("A");
writeln ("B");
writeln ("C");
```

Output:
```
A
B
C
```

The order of statements determines the order of output.

---

## 3. Sequence with variables

```d
int n = 5;
writeln ("n = ", n);
n = n + 1;
writeln ("n = ", n);
```

Output:
```
n = 5
n = 6
```

Each line runs in order.

---

## 4. Sequence with input

```d
write ("Enter value: ");
string text = readln ();
writeln ("You typed: ", text);
```

The prompt must come **before** the input.

---

## 5. Common beginner mistakes

### Putting statements in the wrong order
```d
string name = readln ();
write ("Enter your name: ");   // prompt comes too late
```

### Forgetting that earlier statements affect later ones
```d
int n = 10;
n = n + 5;
writeln (n);   // prints 15, not 10
```

### Expecting “magic”
Sequence is predictable.  
Nothing happens unless you write the statement.

---

## 6. Hydratable example

Path:
```
exercises/01-lessons/04-sequence/basic/app.d
```

Example:
```d
writeln ("Start");
int n = 3;
writeln ("n = ", n);
writeln ("End");
```

---

## 7. Summary

- Sequence runs top‑to‑bottom  
- Order matters  
- Earlier statements affect later ones  
- Prompts must come before input  
- Sequence is the foundation of all control flow  

Every program begins with sequence.
