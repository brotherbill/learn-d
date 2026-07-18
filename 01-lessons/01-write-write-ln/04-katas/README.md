# Katas — write / writeln

These katas assume the student has already studied Lesson 01.  
No teaching, no hints — just **mechanical drills**.

---

## Kata 01 — HOLD vs FLUSH (no newline)

**Goal:**  
Write a program that calls `write` three times with different characters and **never** flushes.

**Requirements:**

- Use `write` only.
- Do **not** call `writeln`, `stdout.flush`, or `readln`.
- Program must compile and run.
- Console output must be **empty**.

---

## Kata 02 — First newline trigger

**Goal:**  
Write a program that:

- writes `"ABC"` using `write`
- then writes a single newline using `write`

**Requirements:**

- Use `write` only.
- Output must be exactly:
  ```
  ABC
  ```

---

## Kata 03 — After newline behavior

**Goal:**  
Write a program that:

- writes `"AB"` using `write`
- writes a newline using `write`
- writes `"CD"` using `write`

**Requirements:**

- Use `write` only.
- Output must be exactly:
  ```
  AB
  CD
  ```

---

## Kata 04 — writeln vs write

**Goal:**  
Write a program that produces:

```
Hello
World
```

**Requirements:**

- Use both `write` and `writeln`.
- At least one line must be produced using `writeln`.
- At least one character must be produced using `write`.

---

## Kata 05 — Variadic mixed types

**Goal:**  
Write a program that produces:

```
Score: 42 points
```

**Requirements:**

- Use `writeln`.
- Use at least one `string` literal and one `int` literal.
- Do **not** insert extra spaces accidentally.

---

## Kata 06 — Manual flush

**Goal:**  
Write a program that:

- writes `"XYZ"` using `write`
- flushes using `stdout.flush`
- then exits

**Requirements:**

- Output must be exactly:
  ```
  XYZ
  ```
- No newline at the end.

---

## Kata 07 — Prompt bleed bug

**Goal:**  
Reproduce the intentional bug:

- write `"XYZ"` using `write`
- flush using `stdout.flush`
- write `"Enter value: "` using `write`
- call `readln`
- print `"You typed: "` and the input using `writeln`

**Requirements:**

- Output must show `XYZEnter value:` as the prompt.
- Student must **see** the bleed and explain why it happens.

---

## Kata 08 — Fix the prompt bleed

**Goal:**  
Fix Kata 07 so the prompt is:

```
Enter value:
```

(with no `XYZ` before it)

**Requirements:**

- May use `write`, `writeln`, `stdout.flush`, `readln`.
- Must not change the **order** of logical actions:
  - print XYZ
  - prompt
  - read input
  - echo input

---

## Kata 09 — No automatic spaces

**Goal:**  
Write four programs, each producing `Hello world` in a different way:

1. No spaces inserted → `Helloworld`
2. Space as separate string literal
3. Space at end of first string
4. Space at start of second string

**Requirements:**

- Use `writeln` in all four.
- Student must see exactly **why** each output looks the way it does.

---

## Kata 10 — Cursor movement (mental model)

**Goal:**  
Write a program that produces:

```
A
 B
  C
```

**Requirements:**

- Use `write` and `writeln`.
- Use spaces and newlines only (no tabs).
- Student must reason about cursor position after each call.
