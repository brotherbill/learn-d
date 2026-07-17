# Query

A **query** is an operation that **asks for information**.  
It returns data without changing anything.

A query:

- reads state  
- computes a result  
- returns information  
- has no side effects  
- does not modify the world  

Queries are about **answers**, not actions.

Example:

```d
int customerCount()
{
    return customers.length;   // reads state
}
```

This function performs a query.  
It returns information without changing anything.

---

## 1. Queries must not cause side effects

A query must never:

- modify a variable  
- write to a file  
- update a database  
- send a message  
- change a UI element  

Queries **only** return information.  
They do not perform work.

See `pure-function.md` and `side-effect.md`.

---

## 2. Queries return values

Queries always return something:

```d
double averageScore()
```

The purpose is the **result**, not an effect.

A query’s return value is its entire meaning.

---

## 3. Queries define information access

Queries are the “questions” of a program.  
They retrieve data.  
They describe the world.  
They do not change the world.

Queries are the information half of Command–Query Separation.

---

## 4. Idempotence and queries

A query **may** be idempotent — but idempotence is **not required**.

### Idempotent queries  
These return the same result every time they are called, assuming the underlying state has not changed.

Examples:

```d
int userCount();
string getUserName(UserID id);
bool isLoggedIn();
```

These are stable: calling them repeatedly yields the same answer.

Idempotence is a **nice property**, because it makes queries predictable and testable.

### Non‑idempotent queries  
Some queries naturally return different results each time.

Example:

```d
long currentTimeMillis();   // not idempotent
```

The system clock changes continuously.  
Calling this query twice yields different answers.

This is still a **valid query**, because it:

- returns information  
- does not change state  
- has no side effects  

Idempotence is optional.  

See `idempotent.md`.

---

## 5. Summary

A **query**:

- returns information  
- does not change state  
- has no side effects  
- may be idempotent (but does not have to be)  
- is about asking, not doing  
- is the information half of Command–Query Separation  

Queries describe the world.  
Commands change the world.  
They must never be combined.

---

## See also

- glossary/command.md  
- glossary/command-query-separation.md  
- glossary/pure-function.md  
- glossary/idempotent.md  
- glossary/function.md
