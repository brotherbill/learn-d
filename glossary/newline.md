# Newline

A **newline** is the special character that moves the cursor to the next line in the console.

You cannot type a newline directly inside a string literal, because pressing Enter would end
the string. So D uses an **escape sequence** to represent it.

The escape sequence for newline is:

```
\n
```

---

## 1. Why newline needs two characters

Newline uses two characters because of the **escape character**:

- `\` — the escape character  
- `n` — the code for “newline”

The escape character `\` tells the language:

    “The next character is not literal text. It has a special meaning.”

You need this because some characters (like newline) cannot be typed directly into a string.

So `\n` is how D represents the newline character.

---

## 2. What the escape character does

The escape character `\` introduces a **special sequence**.

Examples of escape sequences:

- `\n` — newline  
- `\t` — tab  
- `\\` — literal backslash  
- `\"` — literal double quote inside a **string literal**  
- `\'` — literal single quote inside a **character literal**

These are characters that cannot be typed directly in their context.

Examples of characters that do **not** need escaping:

- `"'"` — single quote inside a **string literal**  
- `'\"'` — double quote inside a **character literal**

These are legal because the delimiter of the literal is different from the character being represented.

Escape sequences allow you to represent characters that cannot be typed directly.

---

## 3. How to write a literal backslash

Since `\` begins an escape sequence, you must escape the backslash itself:

```d
writeln ("\\");
```

Console output:
```
\
```

The first backslash starts the escape sequence.  
The second backslash means “the literal backslash character.”

---

## 4. Examples of escaping quotes

### 4.1. Escaping a single quote inside a character literal

A **character literal** uses single quotes, so `'` must be escaped:

```d
writeln ('\'');
```

Console output:
```
'
```

### 4.2. Escaping a double quote inside a string literal

A **string literal** uses double quotes, so `"` must be escaped:

```d
writeln ("\"");
```

Console output:
```
"
```

### 4.3. Double quote without escaping (character literal)

A double quote **as a character** does not need escaping:

```d
writeln ('"');
```

Console output:
```
"
```

### 4.4. Single quote without escaping (string literal)

A single quote **inside a string** does not need escaping:

```d
writeln ("'");
```

Console output:
```
'
```

---

## 5. Using newline inside a string

You can place newline anywhere inside a string literal:

```d
writeln ("Line 1\nLine 2");
```

Console output:
```
Line 1
Line 2
```

The console moves the cursor to the next line when it sees `\n`.

---

## 6. Newline and writeln

`writeln` automatically prints a newline **after** printing all its parameters.

Example:
```d
writeln ("Hello");
```

Console output:
```
Hello
```

This is the same as:
```d
write ("Hello");
write ("\n");
```

---

## 7. Newline is a single character

Even though `\n` uses two characters in the source code, it represents **one** character in memory:

- one byte in ASCII  
- one code point in Unicode  
- one cursor movement in the console  

The two-character escape sequence is just how you *write* it in code.

---

## See also

- glossary/console.md  
- glossary/write.md  
- glossary/writeln.md  
- glossary/literal.md  
- glossary/character.md  
- glossary/escape-sequence.md
