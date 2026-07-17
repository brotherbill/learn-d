# Command

A **command** is a function whose purpose is to **perform an action**.  
Commands **cause change**.  
Commands **produce side effects**.  
Commands **do work**.

A command does **not** return information about the system.  
A command does **not** report on whether the action succeeded or failed.  
A command does **not** provide metrics, diagnostics, or status.

Commands are one half of **Command–Query Separation (CQS)**.

---

## 1. What a command does

A command:

- performs an action  
- changes state  
- modifies data  
- interacts with external systems  
- produces side effects  
- triggers observable behavior  

A command’s purpose is **effect**, not **information**.

Example:

```d
void saveUser(User u)
{
    database.save(u);   // side effect
}
```

This is a command because it **does work**.

---

## 2. What a command does *not* do

A command must **not**:

- return information  
- answer questions  
- compute values  
- reveal state  
- report success or failure  
- return metrics or diagnostics  
- behave like a query  

Commands are about **action**, not **knowledge**.

If a function both *does work* and *returns information*, it violates CQS.

---

## 3. Commands do not report success or failure

A command’s job is to **perform the action**, not to **report on the action**.

Incorrect (violates CQS):

```d
bool saveUser(User u)
{
    return database.save(u);   // mixes command + query
}
```

Correct:

```d
void saveUser(User u)
{
    database.save(u);   // command only
}
```

If you need to know whether the save succeeded, you call a **query** afterward.

Commands do work.  
Queries report truth.  
They must never be combined.

---

## 4. Commands and side effects

Commands are the natural home of side effects.

Typical command side effects include:

- writing to a database  
- writing to a file  
- sending a network request  
- printing output  
- mutating memory  
- updating UI  
- modifying global or shared state  

Commands are where side effects belong.  
Queries must not contain them.

---

## 5. Commands and purity

Commands are **not pure**.

A pure function:

- has no side effects  
- depends only on parameters  
- returns only computed values  

Commands violate purity by design.  
This is correct: commands exist to **do work**, not to compute values.

---

## 6. Commands and function signatures

A command’s signature communicates:

- what action will be performed  
- what data is required to perform it  
- what side effects will occur  
- that no domain information will be returned  

Commands typically return `void`.

Returning:

- `bool`  
- error codes  
- status objects  

is **query behavior**, not command behavior.

These return values are **information**, and therefore violate CQS.

---

## 7. Commands and Separation of Concerns

Commands isolate the concern of **doing work**.  
Queries isolate the concern of **returning information**.

Mixing these concerns creates:

- confusion  
- nondeterminism  
- hidden dependencies  
- unpredictable behavior  
- correctness failures  

Commands must remain commands.  
Queries must remain queries.

---

## 8. Commands in Command–Query Separation (CQS)

CQS states:

> A function must be either a command or a query — never both.

Commands:

- perform actions  
- change state  
- produce side effects  
- do not return domain information  
- do not report success or failure  

Queries:

- return information  
- do not change state  
- do not produce side effects  

CQS is one of the strongest correctness‑preserving principles in software design.

---

## 9. Examples

### Good command

```d
void addUser(User u)
{
    users ~= u;   // modifies state
}
```

### Bad command (violates CQS)

```d
User addUser(User u)
{
    users ~= u;   // command
    return u;     // query
}
```

This mixes concerns.  
It is both a command and a query.  
It violates CQS.

---

## 10. Running a command, then checking if it succeeded

Commands do work.  
Queries report truth.

Correct pattern:

```d
void saveUser(User u)        // COMMAND
{
    database.save(u);        // performs the action
}

bool userExists(UserID id)   // QUERY
{
    return database.contains(id);   // reports truth
}

void example()
{
    saveUser(User("Anna"));        // run the command

    if (userExists("Anna"))        // run the query
    {
        writeln("Save succeeded.");
    }
    else
    {
        writeln("Save failed.");
    }
}
```

The command performs the action.  
The query verifies the truth.  
They remain separate.

---

## 11. Summary

A **command**:

- performs an action  
- changes state  
- produces side effects  
- does not return domain information  
- does not report success or failure  
- does not provide metrics or diagnostics  
- is not pure  
- isolates the “do work” concern  
- is one half of Command–Query Separation  

Commands belong in the action path.  
Queries belong in the information path.  
They must never be combined.

---

## See also

- glossary/query.md  
- glossary/command-query-separation.md  
- glossary/side-effect.md  
- glossary/pure-function.md  
- glossary/function.md  
- glossary/function-signature.md  
- glossary/separation-of-concerns.md
