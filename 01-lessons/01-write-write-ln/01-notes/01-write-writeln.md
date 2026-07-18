# Lesson 01 — write and writeln

Welcome to Learn‑D.

We begin with something every student already understands:

## 🚽 The Toilet Analogy (Mechanically Accurate)

D’s console output system works almost exactly like a toilet.

There is a **bowl** (the output buffer) and two states:

- **HOLD state** — the bowl holds water  
- **FLUSH state** — the bowl empties water  

And just like a toilet:

- water always enters the bowl first  
- the bowl itself decides nothing  
- a **trigger** starts the flush  
- flush continues until the cycle ends  
- then the bowl returns to HOLD state  

This analogy is **fun**, **concrete**, and **mechanically correct**.

---

# 1. Literal Types

We begin with three simple literal types:

- **character literal** — `'x'`  
- **integer literal** — `42`  
- **string literal** — `"I can learn D"`  

These are the simplest values to print.

---

# 2. The Cursor (Teletype Analogy)

Before we talk about escape sequences or buffer behavior,  
we must define the **cursor**, because it is the visible proof  
that characters are (or are not) leaking to the console.

We use the **historic teletype** — a physical machine —  
because it behaves exactly like the modern console.

A teletype has:

- a **typing cylinder** (print head)  
- a **roll of paper** (console output)  
- a **current printing position**  

That printing position is the **cursor**.

### Cursor definition

**The cursor is the console’s current printing position —  
the exact spot where the next character will appear when flushed.**

### How the cursor moves

- Normal character → cursor moves **one position to the right**  
- Newline (`\n`) → cursor moves **down** one line and **back to the left margin**  
- Tab (`\t`) → cursor jumps to the next **tab stop**  

### How the cursor does *not* move

- HOLD state → **no cursor movement**  
  (nothing leaks to the console)

The cursor is the student’s **visible proof**  
that the buffer and flush model is real.

---

# 3. FIFO Order (Grocery Checkout Analogy)

Before we talk about how the buffer dumps characters,  
we must define **FIFO order**, because the buffer always empties in FIFO.

FIFO means **First In, First Out**.

The best physical analogy is the **grocery store checkout line**:

- You pick your groceries.  
- You walk to the cashier.  
- You get in line.  
- Whoever gets in line **first** gets served **first**.  
- Whoever gets in line **second** gets served **second**.  
- Nobody cuts.  
- Nobody swaps places.  
- The order is preserved.

This is exactly how the output buffer behaves.

Characters enter the buffer **in a specific order**,  
and when a flush happens, they leave **in that same order**.

FIFO is not a metaphor — it is the literal mechanism.

---

# 4. Escape Sequences (Special Characters)

Some characters cannot be typed directly or have special meaning.  
D uses **escape sequences** to represent them.  
These become **single characters** once they enter the buffer.

### `\n` — newline  
Moves the cursor to the beginning of the next line.  
This is the **flush trigger**.

### `\\` — backslash  
Represents a single backslash character.

### `\'` — single quote  
Used inside single‑quoted character literals.

### `\"` — double quote  
Used inside string literals.

### `\t` — tab  
Inserts a horizontal tab.

Example:
```
writeln ("Hello\nWorld");
writeln ("Path: C:\\Windows\\System32");
writeln ("She said \"Hello\"");
writeln ('\'');
writeln ("Column1\tColumn2");
```

---

# 5. The Output Buffer (The Toilet Bowl)

D **always** writes characters to an internal output buffer first.

This buffer has two states:

### HOLD state
Characters stay in the buffer.  
**Nothing leaks to the console.**  
The cursor does not move.

### FLUSH state
Characters still enter the buffer first,  
but the buffer immediately dumps them to the console  
in **FIFO order**.  
The cursor moves as characters appear.

write **never** writes directly to the console.  
It always goes through the buffer first.

---

# 6. write — HOLD State

`write` writes characters into the buffer **one at a time**.

Example:
```
write ('x');
```

This puts `'x'` into the buffer.  
Nothing leaks to the console.  
The cursor does not move.

---

# 7. The Newline Trigger — Switching to FLUSH State

When the **first newline** (`\n`) is written:

**A trigger switches the buffer from HOLD state to FLUSH state.  
Everything in the buffer dumps to the console in FIFO order.  
The buffer stays in FLUSH state until the write/writeln call finishes.**

---

# 8. Characters After Newline Still Enter the Buffer First

Remaining characters **do not** bypass the buffer.

They still go into the buffer first.

But because the buffer is in **FLUSH state**,  
each character is immediately dumped to the console.

---

# 9. End of Call → Buffer Returns to HOLD State

Once the write/writeln call finishes:

- flush cycle ends  
- buffer returns to HOLD state  
- future writes stay in buffer again  
- future newline triggers a new flush cycle  

---

# 10. writeln — Always Triggers FLUSH State

`writeln` behaves like `write` but adds a newline at the end.

Example:
```
writeln ("Hello");
```

This:

1. writes `"Hello"` into buffer  
2. writes `"\n"` → trigger switches buffer to FLUSH  
3. dumps buffer  
4. dumps newline  
5. ends flush cycle  
6. returns buffer to HOLD  

---

# 11. Other Ways to Trigger FLUSH State

### 1. stdout.flush ()  
Immediate flush.

### 2. readln ()  
Input requires the buffer to flush first.

### 3. write (`foo\n`)  
The `\n` triggers the flush.  
Example:
```
write ("foo\n");
```

### 4. writeln ()  
Always writes a newline, triggering the flush.

---

# 12. Variadic Behavior

Both `write` and `writeln`:

- accept multiple parameters  
- accept mixed types  
- convert each parameter to characters  
- write characters one at a time  
- obey HOLD/FLUSH rules  

Example:
```
writeln ("Score: ", 42, " points");
```

---

# 13. No Automatic Spaces

Neither function inserts spaces.

If you want a space, you must include it:

```
writeln ("Hello", "world");       // writes: Helloworld
writeln ("Hello", " ", "world");  // writes: Hello world
writeln ("Hello ", "world");      // writes: Hello world
writeln ("Hello", " world");      // writes: Hello world
```

---

# 14. Summary

- D always writes characters to the buffer first.  
- The buffer has two states: HOLD and FLUSH.  
- The buffer decides nothing — triggers decide.  
- Escape sequences become single characters.  
- The cursor is the typing cylinder’s position on a teletype.  
- FIFO order is the grocery‑store checkout line: first in, first out.  
- HOLD → nothing leaks, cursor does not move.  
- FLUSH → characters dump in FIFO order, cursor moves.  
- `write` stays in HOLD unless a newline appears.  
- Newline switches to FLUSH.  
- `writeln` always triggers FLUSH.  
- Four flush triggers: `stdout.flush ()`, `readln ()`, newline inside `write ()`, `writeln ()`.  
- Variadic behavior is consistent.  
- No automatic spaces.  
- Toilet analogy = buffer state machine.  
- Teletype analogy = cursor movement.  
- FIFO analogy = buffer dump order.  
- Together they form a complete mechanical model of console output.

This is the foundation of console output in D.

---

## A Note About Depth

For a first lesson, this one went deep fast.

That is only because `write` and `writeln` look simple on the surface, but underneath they use a real mechanism: a buffer, two states, a flush trigger, FIFO order, and a visible cursor. If you understand the mechanism, you understand the behavior. There are no surprises waiting for you later.

You can handle the truth.
