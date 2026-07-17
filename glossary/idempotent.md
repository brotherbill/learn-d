# Idempotent

An operation is **idempotent** if calling it multiple times produces the **same observable result** as calling it once.

Idempotence is about **stability of outcome**.  
It does **not** require purity.  
It does **not** require determinism.  
It does **not** require immutability.

Idempotence is a property of **effects**, not of **values**.

---

## 1. Idempotence defined

An operation is idempotent when:

- performing it once  
- performing it twice  
- performing it ten times  

produces the **same final state**.

Example:

```d
void markAsActive(UserID id)
{
    users[id].active = true;   // same effect every time
}
```

Calling this command repeatedly yields the same final world:  
the user is active.

This is an **idempotent command**.

---

## 2. Idempotence does not imply purity

Idempotent operations may have side effects.  
They may mutate state.  
They may write to storage.

Idempotence only guarantees that **repeated execution converges** to the same final state.

Purity guarantees **no side effects**.

These are different concepts.

---

## 3. Idempotent commands

Commands may be idempotent.

Examples:

```d
void enableLogging()
{
    loggingEnabled = true;
}
```

```d
void setVolume(int level)
{
    volume = level;   // repeated calls converge
}
```

These commands change the world, but repeated calls converge to the same final state.

Idempotence is a **nice property** for commands because it:

- reduces risk  
- simplifies retries  
- improves robustness  
- makes distributed systems safer  

---

## 4. Idempotent queries

Queries **may** be idempotent — but idempotence is **not required**.

Idempotent queries return the same value when the underlying state has not changed.

Examples:

```d
int userCount();
string getUserName(UserID id);
bool isLoggedIn();
```

These are stable: repeated calls yield the same answer.

Idempotence is a **nice property**, because it makes queries predictable and testable.

---

## 5. Non‑idempotent queries

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
Purity is mandatory.

---

## 6. Idempotence in distributed systems

Idempotence is essential in distributed systems because:

- messages may be retried  
- operations may be duplicated  
- network failures may cause replays  
- partial failures may cause repeated calls  

Idempotent operations prevent:

- double‑writes  
- duplicate updates  
- inconsistent state  
- correctness failures  

Idempotence is a **correctness amplifier**.

---

## 7. Summary

An **idempotent** operation:

- produces the same final state when repeated  
- may have side effects  
- may be a command or a query  
- does not need to be pure  
- is desirable but not required  
- improves reliability and testability  
- is especially valuable in distributed systems  

Idempotence is about **convergent effects**, not about **no effects**.

---

## See also

- glossary/command.md  
- glossary/query.md  
- glossary/pure-function.md  
- glossary/side-effect.md  
- glossary/command-query-separation.md
