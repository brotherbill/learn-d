# Unicode

**Unicode** is a universal character encoding standard designed to represent every character
from every writing system in the world.  
It is the successor to ASCII and extends ASCII while keeping ASCII’s first 128 characters
exactly the same.

Unicode assigns each character a **code point**, written like:

```
U+0041   (the letter A)
U+03B1   (Greek alpha)
U+4E2D   (Chinese character “middle”)
U+1F600  (emoji “grinning face”)
```

Unicode is the foundation of modern text processing.

---

## 1. Why Unicode exists

ASCII can only represent 128 characters:

- English letters  
- digits  
- punctuation  
- control codes  

This is not enough for:

- accented characters  
- non‑English alphabets  
- Asian scripts  
- mathematical symbols  
- emoji  
- technical symbols  

Unicode solves this by providing **one unified system** for all characters.

---

## 2. Unicode code points

A **code point** is a number that identifies a character.

Examples:

```
U+0041   A
U+0061   a
U+00E9   é
U+03A9   Ω
U+1F600  😀
```

Code points are abstract.  
They are not bytes.  
They are not storage formats.  
They are just numbers.

---

## 3. Unicode encodings (UTF‑8, UTF‑16, UTF‑32)

Unicode defines characters, but not how they are stored.  
Storage is handled by **encodings**.

### UTF‑8
- variable‑length  
- ASCII characters use 1 byte  
- other characters use 2–4 bytes  
- dominant encoding on the internet  
- used by Linux, macOS, and most modern systems

### UTF‑16
- variable‑length  
- uses 2 or 4 bytes  
- common in Windows and some programming languages  
- uses **surrogate pairs** for characters outside the Basic Multilingual Plane

### UTF‑32
- fixed‑length  
- always 4 bytes  
- one code point per 32‑bit unit  
- simple but memory‑heavy

Learn‑D examples use UTF‑8 because it is the most common and easiest to understand.

---

## 4. ASCII inside Unicode

Unicode preserves ASCII exactly:

- code points U+0000 through U+007F  
- same numeric values  
- same characters  
- same ordering  

This means:

- every ASCII file is valid Unicode  
- uppercase A–Z are contiguous  
- lowercase a–z are contiguous  
- uppercase comes before lowercase  

ASCII is the foundation.  
Unicode is the extension.

---

## 5. Unicode and D

The D language supports Unicode, but **not all D character types represent full Unicode characters**.

### `char`
- 8‑bit  
- holds **one UTF‑8 code unit**, not a full Unicode character  
- only safe for **ASCII characters**  
- cannot represent general Unicode characters by itself

### `wchar`
- 16‑bit  
- holds **one UTF‑16 code unit**  
- many characters fit in one unit  
- but some characters require **two** units (surrogate pairs)

### `dchar`
- 32‑bit  
- holds **one full Unicode code point**  
- always one complete character  
- ideal for correctness

### D string types
- `string`   → UTF‑8 sequence (`char[]`)  
- `wstring`  → UTF‑16 sequence (`wchar[]`)  
- `dstring`  → UTF‑32 sequence (`dchar[]`)

---

## 6. Choosing the right type for Unicode work

### When you want the simplest interface for Unicode characters

Use **`dchar`** and **`dstring`**.

A `dchar` is one full Unicode code point.  
A `dstring` is a sequence of `dchar`, so **each element is one complete Unicode character**.

This makes `dstring` ideal for:

- slicing  
- indexing  
- iterating  
- counting characters  
- manipulating text  
- “dicing” Unicode strings  

There is **no encoding complexity** because every element is a full character.

### Why not `wstring` for slicing?

`wstring` is UTF‑16 (`wchar[]`).  
UTF‑16 uses **16‑bit code units**, but some characters require **two** code units (surrogate pairs).

So:

- **Most characters in everyday languages fit in one UTF‑16 code unit**,  
  but  
- **some characters require two**,  
  which means  
- **`wstring` does not guarantee one element = one character**.

Therefore, `wstring` is not ideal for slicing or indexing Unicode text.

### When storing or transmitting Unicode text

Use **UTF‑8** or **UTF‑16**:

- `string` (UTF‑8) is best for storage, files, and network protocols  
- `wstring` (UTF‑16) is common in Windows environments and some APIs  

UTF‑8 is compact and universal.  
UTF‑16 is common in systems that use 16‑bit characters internally.

### When you need exact Unicode code points

Use **`dchar`** or **`dstring`**.

This is the most precise representation, but also the most memory‑heavy.

---

## 7. Memory technique: how to remember the differences

A simple way to remember D’s character types:

### **char / string → “single‑wide” (8 bits)**
- 8‑bit  
- ASCII only  
- UTF‑8 **code units**, not characters  
- safe only for plain English text

### **wchar / wstring → “wider” (16 bits)**
- 16‑bit  
- UTF‑16 **code units**  
- many characters fit in one unit  
- but some require two (surrogates)

### **dchar / dstring → “double‑wider” (32 bits)**
- 32‑bit  
- one full Unicode **code point**  
- one element = one character  
- best for slicing, indexing, and manipulating Unicode text

This memory trick keeps the widths straight:

```
char     = single‑wide  (8 bits)
wchar    = wider        (16 bits)
dchar    = double‑wider (32 bits)
```

And the same applies to their string versions:

```
string   = UTF‑8 bytes
wstring  = UTF‑16 code units
dstring  = UTF‑32 code points
```

This gives students a clean mental model with no ambiguity.

---

## See also

- glossary/ascii.md  
- glossary/character.md  
- glossary/string-literal.md  
- glossary/literal.md
