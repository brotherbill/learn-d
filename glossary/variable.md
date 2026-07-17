# Variable

A **variable** is a named **box** that holds a value.  
You can put a value into the box, take it out, or replace it with a new value.

Example:
```d
int x = 5;   // put 5 in the box named x
x = 10;      // replace it with 10
```

The box `x` first holds `5`, then holds `10`.

Variables are the foundation of state in a program.

---

## 1. Variables have a type

Every variable has a **type**, which determines:

- what kind of value the box can hold  
- what operations are allowed  
- how much memory the box occupies  

Example:
```d
int count;       // box that holds an int
double temp;     // box that holds a double
string name;     // box that holds a string
```

The type is fixed for the lifetime of the box.

---

## 2. Variables have a lifetime (the box exists only inside its scope)

A variable’s box exists only while its **scope** exists.

Example:
```d
{
    int y = 3;  // the box y exists here
}               // the box y is destroyed here
```

Once the scope ends, the box is **gone**.

Using a variable after its box has been destroyed is **Undefined Behavior**.

---

## 3. Variables have a value (the contents of the box)

A variable’s value is simply what is inside the box.

You can:

- read the value  
- write a new value  
- update the value  
- pass the value to functions  
- use the value in expressions  

Example:
```d
int n = 2;   // box contains 2
n = n + 3;   // box now contains 5
```

The contents change as the sequence runs.

---

## 4. Variables and defined behavior

Variables behave predictably when:

- the box exists (valid lifetime)  
- the box is accessed legally (valid bounds)  
- the box’s type is respected  
- the box’s memory is valid  
- the box’s contents are well‑formed  

Defined behavior means:

> The program does exactly what the language says it will do  
> (modulo allowed nondeterminism).

When the box exists and is used correctly, reasoning works.

---

## 5. Variables and undefined behavior

Variables can cause **Undefined Behavior** when the box metaphor is violated.

### 5.1. Using a box after it is destroyed
```d
int* p;
{
    int x = 5;
    p = &x;    // p points to the box x
}             // box x destroyed

*p = 10;      // UB — writing into a box that no longer exists
```

### 5.2. Slicing past the end of an array
```d
int[] a = [1, 2, 3];
auto s = a[0 .. 10]; // UB — slice refers to boxes that do not exist
```

### 5.3. Aliasing that breaks assumptions
Two variables referring to overlapping boxes can break reasoning if assumptions are violated.

### 5.4. Invalid casts
Casting a box’s memory to an incompatible type can cause UB.

UB is the mortal enemy of correctness‑oriented developers.

---

## 6. Variables and safety attributes

D provides function attributes that restrict what *code* is allowed to do.
These attributes do not belong to variables themselves, but they strongly
limit how variables (boxes) may be used inside those functions.

- `@safe` — forbids unsafe memory operations involving boxes
- `pure` — forbids hidden side effects on boxes
- `nothrow` — forbids throwing exceptions
- `@nogc` — forbids implicit GC allocations

Using these attributes constrains D to a smaller, safer subset where many
UB‑producing operations are not even legal. They do not eliminate UB, but
they **reduce the surface area** dramatically.


---

## 7. Variables and correctness

Correctness requires:

- valid lifetimes (the box exists)  
- valid memory (the box is real)  
- valid types (the box holds the right kind of thing)  
- valid bounds (the box is accessed legally)  
- valid assumptions (the box behaves as defined)  

Variables must be used in ways the language defines.

If variable usage enters UB, correctness cannot be guaranteed.

For correctness‑first developers:

> Defined behavior is the only safe ground.  
> UB is the mortal enemy.

---

## 8. Why variables matter

Variables are essential for:

- storing state  
- computing results  
- controlling flow  
- building data structures  
- expressing logic  
- writing any meaningful program  

Variables are the boxes that hold the data your program works with.

---

## See also

- glossary/defined-behavior.md  
- glossary/undefined-behavior.md  
- glossary/scope.md  
- glossary/memory.md  
- glossary/slice.md  
- glossary/array.md
