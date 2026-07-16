# Cheat Sheet — Variables

Quick review of Lesson 02.

---

## 1. What is a variable?

A variable is a **named box** that holds a value.

You can:
- create the box  
- put a value in the box  
- change the value  
- read the value  

---

## 2. Declaring a variable

```d
int count;
string name;
```

This creates the box but does not assign a new value.

In D, uninitialized variables get their **.init** value:

- `int.init` is `0`
- `string.init` is `null` (empty reference)

---

## 3. Assigning a value

```d
count = 5;
name = "Alice";
```

Assignment **replaces** the value in the box.

---

## 4. Using a variable

```d
int age;
age = 12;

writeln ("Age = ", age);
```

Output:
```
Age = 12
```

---

## 5. Changing a variable

```d
int n = 10;
n = n + 1;      // now 11
```

The right side is evaluated first, then stored into the variable.

---

## 6. Types you know so far

- `int` — whole numbers  
- `string` — text  
- `bool` — true or false  

More types come later.

---

## 7. Common beginner mistakes

### Using a variable before assigning a meaningful value
```d
int n;
writeln (n);    // prints 0, not “unknown”
```

### Forgetting quotes for strings
```d
name = Alice;   // error
```

### Confusing assignment with comparison
```d
if (n = 5) { }  // error: assignment, not comparison
```

Correct:
```d
if (n == 5) { }
```

---

## 8. Hydratable example

Path:
```
exercises/01-lessons/02-variables/basic/app.d
```

Example:
```d
int score = 0;
string player = "Benny";

writeln ("Player: ", player);
writeln ("Score: ", score);
```

---

## 9. Summary

- A variable is a named box that holds a value  
- Declaration creates the box  
- Assignment puts a value in the box  
- D gives default `.init` values  
- Variables can be changed anytime  
- Use `writeln` to inspect values  

Variables are the foundation of storing information in D.
