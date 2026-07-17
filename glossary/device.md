# Device

A **device** is anything your program can interact with.  
A device may be physical hardware or a virtual component provided by the operating system.

In Learn‑D, the most important device is the **console**:  
the simple text input/output device your program uses to print characters and read characters.

A device is something your program communicates with.  
It is not part of your program itself.

---

## 1. What counts as a device?

A device is anything your program can send data to or receive data from.

Examples of devices:

- the console (text input/output)  
- the keyboard (input)  
- the screen (output)  
- files on disk  
- network sockets  
- printers  
- timers  
- pipes and processes  
- virtual devices provided by the OS  

Some devices are physical.  
Some devices are virtual.  
Your program interacts with both in the same conceptual way:  
**send data, receive data, or both.**

---

## 2. Device vs console

The **console** is a specific kind of device:  
a text-only input/output device.

The console:

- receives characters typed by the user  
- sends characters printed by your program  

The console is the simplest device your program uses.

Other devices may handle:

- binary data  
- structured data  
- network communication  
- storage  
- graphics  
- audio  

The console is just one device among many.

---

## 3. Device vs terminal

The **terminal** is not a device.  
It is a **program** that displays console output and sends keyboard input.

Your program interacts with the **console**.  
The terminal interacts with the console on your behalf.

The terminal is the window.  
The console is the device.

---

## 4. How your D program interacts with devices

Your D program interacts with devices through:

- standard input/output (console)  
- file operations  
- network operations  
- process operations  
- OS APIs  

For example:

```d
writeln ("Hello");   // writes characters to the console device
```

The terminal shows the result, but the device receiving the characters is the console.

---

## 5. Devices are outside your program

Your program does not control:

- how the terminal window looks  
- how the keyboard hardware works  
- how the OS stores files  
- how the network transmits data  

Your program only sends and receives data.  
The device and the operating system handle everything else.

---

## 6. Why devices matter

Devices matter because they define how your program interacts with the outside world:

- printing text  
- reading input  
- saving files  
- loading files  
- communicating over the network  
- running other programs  

Every Learn‑D example uses at least one device: the console.

---

## See also

- glossary/console.md  
- glossary/terminal.md  
- glossary/cursor.md  
- glossary/newline.md  
- glossary/write.md  
- glossary/writeln.md  
- glossary/readln.md
