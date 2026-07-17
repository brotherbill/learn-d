# Escape Sequence

An **escape sequence** is a way to represent a character that cannot be typed directly inside
a literal. Escape sequences begin with the **escape character**:

```
\
```

The escape character tells the language:

    “The next character is not literal text. It has a special meaning.”

Escape sequences appear inside **string literals** and **character literals**.

---

## 1. Why escape sequences exist

Some characters cannot be typed directly:

- You cannot press Enter inside a string literal.
- You cannot type a single quote inside a character literal without ending it.
- You cannot type a double quote inside a string literal without ending it.
- You cannot type a backslash without starting an escape sequence.

Escape sequences solve this problem by giving these characters a safe representation.

---

## 2. Common escape sequences

These escape sequences represent characters that cannot be typed directly:

- `\n` — newline  
- `\t` — tab  
- `\\` — literal backslash  
- `\"` — literal double quote **inside a string literal**  
- `\'` — literal single quote **inside a character literal**

Each escape sequence produces **one** character in memory.

---

## 3. Literal characters that do *not* need escaping

Some characters do not need escaping because they do not conflict with the literal’s delimiter.

### Inside a string literal (`"..."`)
A string literal uses double quotes, so:

- `'` (single quote) does **not** need escaping  
- `'"'` is legal  
- `"'"` is legal

Examples:

```d
writeln ("'");
writeln ("'hello'");
```

Console output:
```
'
'hello'
```

### Inside a character literal (`'...'`)
A character literal uses single quotes, so:

- `"` (double quote) does **not** need escaping  
- `'\"'` is legal

Example:

```d
writeln ('"');
```

Console output:
```
"
```

---

## 4. Characters that *do* need escaping

### 4.1. Single quote inside a character literal

A character literal uses single quotes, so `'` must be escaped:

```d
writeln ('\'');
```

Console output:
```
'
```

### 4.2. Double quote inside a string literal

A string literal uses double quotes, so `"` must be escaped:

```d
writeln ("\"");
```

Console output:
```
"
```

### 4.3. Backslash inside either literal

Backslash always begins an escape sequence, so it must be escaped:

```d
writeln ("\\");
```

Console output:
```
\
```

---

## 5. Escape sequences produce one character

Even though escape sequences use two characters in the source code, they represent **one**
character in memory:

- one byte in ASCII  
- one Unicode code point  
- one cursor movement (for `\n`)  

The two-character form is only how you *write* it in code.

---

## 6. Summary

- Escape sequences begin with `\`.  
- They represent characters that cannot be typed directly.  
- `'` must be escaped in a **character literal**.  
- `"` must be escaped in a **string literal**.  
- `\\` represents a literal backslash.  
- Escape sequences produce **one** character.

---

## See also

- glossary/newline.md  
- glossary/character.md  
- glossary/string-literal.md  
- glossary/console.md  
- glossary/write.md  
- glossary/writeln.md
