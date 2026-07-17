# Parameter

A **parameter** is a variable in a **function signature**.  
It is the name the function uses to refer to a value that will be supplied by the caller.

A parameter is part of the function’s *API*, not its body.

Example:

```d
void greet(string name)   // 'name' is a parameter
{
    writeln("Hello ", name);
}
```

Here, `name` is a **parameter**.  
It is not a real value yet.  
It is a placeholder name in the function signature.

---

## 1. Parameters belong to the function *signature*

A parameter appears **where the function is declared**, not where it is called.

```
void add(int a, int b)   // a and b are parameters
```

The signature defines the function’s **API**:

- what the function expects  
- what types the function accepts  
- what names the function will use internally  

The body implements the API.  
The signature describes it.

---

## 2. Parameters are NOT arguments

The **primary confusion** comes from people misusing the word **argument** when they actually mean **parameter**.

The concepts are simple:

- **Parameter** → the variable in the function signature  
- **Argument** → the actual value passed at the call site  

Example:

```d
add(3, 5);
```

Here:

- `a` and `b` are **parameters**  
- `3` and `5` are **arguments**  

The difference is precise and easy once taught correctly.

---

## 3. Why there is confusion

The confusion between *parameter* and *argument* is extremely common, but it is **not** because the concepts are difficult.  
It exists because of **bad teaching**, not complexity.

### 1. Teachers misuse the terms
Many instructors casually say “argument” when they mean “parameter.”  
Students learn the wrong word from day one.

### 2. Textbooks blur the distinction
Some books use “parameter” for both concepts.  
Others avoid “argument” entirely.

### 3. Tutorials oversimplify
Beginner tutorials often say “don’t worry about the difference,” which guarantees confusion later.

### 4. Only one side is shown at a time
Students see either the function signature *or* the function call, not both together.  
Without contrast, the distinction never becomes concrete.

### 5. The words sound similar
“Parameter” and “argument” are long, formal words.  
Beginners assume they are synonyms because nobody explains otherwise.

### The truth
The concepts themselves are **simple**:

- A parameter is a placeholder name.  
- An argument is the actual value.

The confusion exists because the teaching is sloppy, not because the idea is hard.

---

## 4. Parameters are placeholders

A parameter is a name that stands in for a value the caller will provide.

It is like saying:

> “When someone calls this function, they will give me something.  
> I will call that something `name`.”

Parameters do not have values until the function is called.

---

## 5. Types of parameters

D supports several kinds of parameters:

### Regular parameters
```d
void f(int x)
```

### Multiple parameters
```d
void f(int x, int y, string label)
```

### Default parameters  
Default parameters **sound sweet and innocent**, but they are not.

They hide API complexity inside a single function and encourage “magic behavior” based on omitted arguments.

Example of a default parameter:

```d
void add_customer(string name, Kind kind = Kind.regular);
```

This looks simple, but it creates ambiguity:

- What does “regular” mean?  
- Should VIP customers use the same function?  
- What if more customer types appear later?  
- What if the default changes?

### Better design

Define **separate functions** with clear names and no hidden behavior:

```d
void add_regular_customer(string name) { ... }
void add_vip_customer(string name)     { ... }
```

This is:

- clearer  
- more explicit  
- easier to read  
- easier to maintain  
- easier to extend  

Default parameters are optional, but **explicit functions are better API design**.

### Reference parameters
```d
void f(ref int x)
```

### Variadic parameters
```d
void f(int x, int[] rest...)
```

Beginners only need to understand **regular and multiple parameters**.  
The others come later.

---

## 6. Why parameters matter

Parameters allow functions to:

- accept input  
- behave differently based on that input  
- reuse logic  
- avoid duplication  
- stay general and flexible  

Without parameters, every function would be hard‑coded and useless.

---

## 7. Summary

A **parameter** is:

- part of a function signature  
- part of the function’s API  
- a placeholder name  
- not a real value until the function is called  
- often confused with an argument (but they are different)  
- sometimes misused through default parameters, which hide API complexity  

The confusion comes from **misusing “argument” for “parameter”**, caused by **bad teaching**, not by difficulty.

Parameters are simple, precise, and essential.

---

## See also

- glossary/argument.md  
- glossary/function.md  
- glossary/variable.md  
- glossary/type.md
