# Cheat Sheet — write / writeln

This is the quick‑review version of Lesson 01.

---

## 1. Output functions

### `write`
Prints text **without** a newline.

### `writeln`
Prints text **with** a newline.

Use `writeln` for most beginner programs because it keeps output clean and predictable.

---

## 2. Basic usage

```d
writeln ("Hello");
write ("A");
write ("B");
writeln ("C");
```

Output:
```
Hello
ABC
```

---

## 3. Multiple values

Both functions accept multiple values:

```d
writeln ("Score: ", 42);
```

Output:
```
Score: 42
```

D automatically converts values to text.

---

## 4. Empty `writeln`

```d
writeln ();
```

Prints a blank line.

---

## 5. Common beginner mistakes

### Forgetting quotes
```d
writeln (Hello);   // error
```

### Using `write` when you meant `writeln`
```d
write ("Hello");
write ("World");   // prints: HelloWorld
```

### Forgetting to add spaces
```d
writeln ("Hello", "World");   // prints: HelloWorld
```

---

## 6. Hydratable example

Path:
```
exercises/01-lessons/01-output/basic/app.d
```

Example:
```d
writeln ("Welcome to D!");
writeln ("This is your first program.");
```

---

## 7. Summary

- `write` → no newline  
- `writeln` → newline  
- Both accept multiple values  
- D converts values automatically  
- Use `writeln` for clean beginner output  

Output is the foundation of communication in D.
