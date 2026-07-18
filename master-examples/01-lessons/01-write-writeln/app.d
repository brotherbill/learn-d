import std.stdio : write, writeln;

void main ()
{
    // \n is the newline character: it moves the console cursor to the next line.

    // 0 parameters
    writeln ();                 // prints just a newline

    // 1 parameter
    writeln ('D');              // prints: D\n
    writeln (999);              // prints: 999\n
    writeln ("I can learn D");  // prints: I can learn D\n

    // ------------------------------------------------------------
    // 2 parameters — NO extra spaces
    // ------------------------------------------------------------
    writeln ('D', 999);                 // prints: D999\n
    writeln ('D', "I can learn D");     // prints: DI can learn D\n
    writeln (999, "I can learn D");     // prints: 999I can learn D\n

    // ------------------------------------------------------------
    // 3 parameters — NO extra spaces
    // ------------------------------------------------------------
    writeln ('D', 999, "I can learn D"); // prints: D999I can learn D\n

    // ------------------------------------------------------------
    // 2 parameters — WITH explicit spaces
    // ------------------------------------------------------------
    writeln ('D', ' ', 999);                 // prints: D 999\n
    writeln (999, ' ', "I can learn D");     // prints: 999 I can learn D\n
    writeln ("I can learn D", ' ', 999);     // prints: I can learn D 999\n

    // ------------------------------------------------------------
    // 3 parameters — WITH explicit spaces
    // ------------------------------------------------------------
    writeln ('D', ' ', 999, ' ', "I can learn D");
    // prints: D 999 I can learn D\n

    // ------------------------------------------------------------
    // write vs writeln demonstration
    // ------------------------------------------------------------
    write ('D');                 // writes 'D' to the buffer only
    write (999);                 // writes 999 to the buffer only
    writeln ("I can learn D");   // prints: D999I can learn D\n
}
