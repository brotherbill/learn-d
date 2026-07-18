# Cheat Sheet — write / writeln

## Literal Types
- **char**: `'x'`
- **int**: `42`
- **string**: `"Hello"`

## Output Buffer
- All output goes to buffer first.
- States: **HOLD** (no leak), **FLUSH** (drains).
- Flush empties buffer in **FIFO**.

## Cursor
- Next printing position.
- Moves right on chars.
- Moves down + full left on `\n`.
- Moves to tab stop on `\t`.
- No movement in HOLD.

## Escape Sequences
- `\n` newline (flush trigger)
- `\\` backslash
- `\'` single quote
- `\"` double quote
- `\t` tab

## write
- Writes characters **one at a time**.
- Stays in **HOLD** unless a newline appears.
- First `\n` switches to **FLUSH**.
- After printing everything, buffer returns to **HOLD**.

## writeln
- `write` + automatic newline.
- Always triggers **FLUSH**.
- After printing everything, buffer returns to **HOLD**.

## Flush Triggers
1. `stdout.flush ()`
2. `readln ()`
3. newline inside `write`
4. `writeln`

## Flush Behavior
- Flush continues until call ends.
- Buffer returns to **HOLD** afterward.

## Variadic
- `write` and `writeln` accept multiple parameters.
- Each parameter may be of different types.
- Convert each to characters.
- **No automatic spaces**.

## Examples
```
write ('x');
writeln ("Hello");
write ("foo\n");
writeln ("Score: ", 42, " points");
```
