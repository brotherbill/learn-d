# Argument

An **argument** is a **value** you pass to a function **when you call it**.  
It is the real, concrete data supplied by the caller.

An argument is **not** part of the function’s signature.  
It is part of the function *call*.

Example:

```d
greet("Alice");   // "Alice" is an argument
```

Here, `"Alice"` is an **argument**.  
It is the actual value being given to the function.

---

## 1. Arguments belong to the function *call site*

A parameter appears in the function signature.  
An argument appears **where the function is invoked**.

Example:

```d
void greet(string name)   // 'name' is a parameter
{
    writeln("Hello ", name);
}

greet("Alice");           // "Alice" is an argument
```

Arguments provide:

- the real data  
- the actual values  
- what the function will operate on  

The caller supplies arguments.  
The function signature defines parameters.

---

## 2. Arguments are NOT parameters

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

The confusion between *argument* and *parameter* is extremely common, but it is **not** because the concepts are difficult.  
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

## 4. Arguments are real values

Arguments are **actual data**.

Examples:

```d
add(3, 5);          // 3 and 5 are arguments
greet("Alice");     // "Alice" is an argument
scale(2.5);         // 2.5 is an argument
```

Arguments can be:

- numbers  
- strings  
- arrays  
- objects  
- expressions  
- variables  

Example:

```d
int x = 42;
greet(x);           // x is an argument
```

The argument is whatever value is passed at the call site.

---

## 5. Types of arguments

Arguments can be:

### Literal arguments
```d
greet("Bob");
```

### Variable arguments
```d
greet(name);
```

### Expression arguments
```d
add(a + b, 10 * c);
```

### Array or object arguments
```d
process(data);
```

### Reference arguments
When the parameter is `ref`, the argument must be a variable:

```d
update(ref count);   // count is the argument
```

---

## 6. Why arguments matter

Arguments allow functions to:

- operate on real data  
- behave differently each time they are called  
- be reused in many contexts  
- stay flexible and general  

Without arguments, functions would be fixed and useless.

---

## 7. Summary

An **argument** is:

- part of a function call  
- the actual value supplied by the caller  
- real data, not a placeholder  
- often confused with a parameter (but they are different)  

The confusion comes from **misusing “argument” for “parameter”**, caused by **bad teaching**, not by difficulty.

Arguments are simple, precise, and essential.

---

## See also

- glossary/parameter.md  
- glossary/function.md  
- glossary/variable.md  
- glossary/type.md
