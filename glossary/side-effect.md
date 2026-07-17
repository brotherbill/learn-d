# Side Effect

A **side effect** is any change a function makes **outside of its return value**.

If a function modifies the world in any way — even slightly — it has a side effect.

Side effects include:

- modifying a variable  
- writing to a file  
- updating a database  
- sending a message  
- printing to the console  
- changing a UI element  
- mutating an object  
- altering global or shared state  

If a function does any of these, it is **not pure**.

---

## 1. What counts as a side effect

A side effect is any observable change in program state or external state.

### Examples of side effects

```d
counter++;            // modifies state
writeln("Hello");     // console output
file.write("data");   // I/O
db.update(...);       // database change
customer.name = "Bob"; // object mutation
```

All of these make the function impure.

### Examples of no side effects

```d
int add(int a, int b)
{
    return a + b;     // no external change
}
```

This function is pure.

See glossary/pure-function.md.

---

## 2. Side effects make behavior harder to reason about

Side effects introduce:

- hidden dependencies  
- hidden state  
- timing issues  
- ordering issues  
- nondeterminism  
- “it works on my machine” bugs  

When a function depends on external state, its behavior becomes unpredictable.

Example:

```d
int nextId()
{
    return ++counter;   // depends on previous calls
}
```

This function’s output depends on history, not just parameters.

---

## 3. Side effects break the Holy Grail of computing

Pure functions satisfy the Holy Grail:

1. If it fails for the user, it fails **exactly the same way** for you.  
2. Determining the cause of failure becomes trivial.

Side effects destroy both guarantees:

- the failure may depend on timing  
- the failure may depend on hidden state  
- the failure may depend on previous calls  
- the failure may depend on environment differences  

Side effects make debugging harder.

See glossary/pure-function.md.

---

## 4. Commands cause side effects

A **command** is an operation that performs work and changes state.

Commands always have side effects:

```d
void addCustomer(string name)
{
    customers ~= name;   // modifies state
}
```

Commands are the “action” half of software.

See glossary/command.md.

---

## 5. Queries must not cause side effects

A **query** returns information and must not change anything.

Queries must be free of side effects:

```d
int customerCount()
{
    return customers.length;   // reads state only
}
```

Queries are the “information” half of software.

See glossary/query.md and glossary/command-query-separation.md.

---

## 6. Debugging and side effects

Side effects make debugging harder because:

- the function may behave differently each call  
- the function may depend on hidden state  
- the function may depend on external systems  

Pure functions avoid this problem.

For pure functions, D allows **controlled debugging** using the `debug` keyword:

```d
pure int add(int a, int b)
{
    debug writeln("a=", a, " b=", b);  // allowed in pure functions
    return a + b;
}
```

This prints state only in debug builds, without violating purity in release mode.

See glossary/attributes.md.

---

## 7. Summary

A **side effect** is:

- any change outside a function’s return value  
- any modification of state or external systems  
- what makes a function impure  
- what makes debugging harder  
- what commands do  
- what queries must avoid  

Side effects are powerful, necessary, and dangerous.  
They must be used deliberately and understood clearly.

---

## See also

- glossary/pure-function.md  
- glossary/command.md  
- glossary/query.md  
- glossary/command-query-separation.md  
- glossary/function.md  
- glossary/function-signature.md  
- glossary/attributes.md
