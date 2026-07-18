import std.stdio : write, writeln, readln, stdout;

void main()
{
    //
    // 1. HOLD state — nothing leaks
    //
    write ('A');     // HOLD
    write ('B');     // HOLD
    write ('C');     // HOLD

    //
    // 2. First newline triggers FLUSH
    //
    write ("\n");    // FLUSH trigger → dumps ABC + newline
                     // buffer is now empty, state returns to HOLD

    //
    // 3. HOLD state. Characters enter buffer FIFO
    //
    write ("D");     // HOLD
    write ("E");     // HOLD
    write ("F");     // HOLD

    //
    // 4. writeln always flushes
    //
    //    writes out: DEF + newline to console
    writeln ("Hello");   // writes out: Hello + newline to console
    writeln ("World");   // writes out: World + newline to console

    //
    // 5. Variadic behavior (mixed types)
    //
    writeln ("Score: ", 42, " points");  // writes out: Score: 42 points + newline to console

    //
    // 6. stdout.flush () — manual flush
    //
    write ("XYZ");       // HOLD
    stdout.flush ();     // immediate FLUSH. writes out: XYZ to console (no newline)

    //
    // 7. readln flushes before input
    //
    write ("Enter value: ");  // Writes to buffer only (HOLD)
    string s = readln ();     // Flushes buffer. Writes out: XYZEnter value: (no newline)
                              // If user types "Is anyone home?" and presses Enter,
                              // readln() returns "Is anyone home?\n" (with newline).
                              // s has the value "Is anyone home?\n" (with newline).
    writeln ("You typed: ", s);  // writes out: You typed: Is anyone home? + newline to console
}
