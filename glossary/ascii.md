# ASCII

**ASCII** (American Standard Code for Information Interchange) is a character encoding
standard created in the early 1960s to unify how computers represent text.

ASCII assigns each character a number from 0 to 127.  
These numbers are stored in memory as bytes.

ASCII is the foundation of modern text encoding.  
Unicode extends ASCII, but the first 128 characters of Unicode are exactly ASCII.

---

## 1. Before ASCII: EBCDIC and punched cards

Before ASCII, IBM computers used **EBCDIC**  
(Extended Binary Coded Decimal Interchange Code).

EBCDIC was created by IBM in the 1960s and was based directly on the layout of **Hollerith punched cards**.

### Why this mattered

Punched cards had physical columns and rows.  
Characters were encoded by which holes were punched.  
EBCDIC inherited this physical layout, which led to:

- irregular numeric assignments  
- non‑contiguous letter ranges  
- gaps between related characters  
- inconsistent ordering  
- difficulty in sorting text alphabetically  

EBCDIC was tied to IBM’s hardware history, not to logical or mathematical structure.

---

## 2. ASCII’s creation

ASCII was created by the **American National Standards Institute (ANSI)**  
and led by **Robert W. Bemer**, often called the “father of ASCII.”

Bemer pushed for:

- a universal standard  
- logical ordering  
- contiguous ranges  
- compatibility across all computer systems  

ASCII was designed from first principles, not inherited from punched‑card machinery.

---

## 3. Why ASCII is better than EBCDIC

ASCII is considered “better” because it is **simple, logical, and contiguous**.

### 3.1. Contiguous alphabet ranges

ASCII places letters in clean, predictable blocks:

- **A–Z** are contiguous  
  - decimal 65–90  
  - hex 0x41–0x5A  

- **a–z** are contiguous  
  - decimal 97–122  
  - hex 0x61–0x7A  

### 3.2. Uppercase comes before lowercase

ASCII ordering:

```
A B C ... Z a b c ... z
```

This makes alphabetical sorting trivial.

### 3.3. Mathematical simplicity

Because the ranges are contiguous:

- converting uppercase → lowercase is a fixed offset  
- checking “is this a letter?” is a simple range test  
- sorting text is predictable  
- programming languages can treat letters as arithmetic values

### 3.4. Universal adoption

ASCII became the standard across:

- Unix  
- C  
- networking protocols  
- file formats  
- programming languages  
- early internet standards  

EBCDIC remained mostly inside IBM mainframes.

---

## 4. IBM mainframes and ASCII

Although IBM mainframes historically used EBCDIC,  
**modern IBM mainframes understand both EBCDIC and ASCII.**

They can:

- store files in ASCII  
- communicate over ASCII‑based network protocols  
- run software that expects ASCII  
- convert between EBCDIC and ASCII when needed  

EBCDIC remains part of IBM’s legacy environment,  
but ASCII is fully supported and widely used on modern mainframe systems.

---

## 5. ASCII layout (partial)

```
Dec  Hex  Char
----------------
 65  41   A
 66  42   B
 ...
 90  5A   Z

 97  61   a
 98  62   b
 ...
122  7A   z
```

The clean structure is intentional and is one of ASCII’s greatest strengths.

---

## 6. ASCII and Unicode

Unicode includes ASCII as its first 128 characters.  
This guarantees that all ASCII text is valid Unicode text.

ASCII is the foundation.  
Unicode is the extension.

---

## See also

- glossary/character.md  
- glossary/literal.md  
- glossary/string-literal.md  
- glossary/unicode.md
