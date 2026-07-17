# Network

A **network** is a way for computers to send data to each other.  
It connects devices so they can communicate, share information, and run programs that work across multiple machines.

A network is not part of your D program.  
Your program can use the network, but the network itself is provided by the operating system and hardware.

---

## 1. What a network does

A network allows computers to:

- send data  
- receive data  
- connect to servers  
- access websites  
- communicate with other programs  
- transfer files  

A network is simply a path for data to travel between machines.

---

## 2. Local networks vs the internet

### Local network
A **local network** connects computers that are physically close:

- your home Wi‑Fi  
- your school network  
- your office network  

These computers can talk to each other directly.

### The internet
The **internet** is a global network of networks.  
It connects millions of computers around the world.

Your computer connects to the internet through your local network.

---

## 3. How data moves on a network

Data on a network is sent in **packets**.

A packet contains:

- the data being sent  
- the address of the destination  
- the address of the sender  

Routers and switches move packets from one machine to another.

Your D program does not handle packets directly.  
The operating system does.

---

## 4. Network protocols

A **protocol** is a set of rules for communication.

Common protocols include:

- **TCP** — reliable, ordered communication  
- **UDP** — fast, unordered communication  
- **HTTP** — used for websites  
- **HTTPS** — secure version of HTTP  
- **FTP** — file transfer  
- **SMTP** — email sending  

Your D program can use these protocols through libraries, but Learn‑D does not cover networking in beginner examples.

---

## 5. Network addresses

Every device on a network has an **IP address**.

Examples:

```
192.168.1.10   (local network)
8.8.8.8        (internet)
```

An IP address identifies where data should be sent.

Your D program does not need to know how IP addresses work unless you are writing network code.

---

## 6. Networks and D

D programs can use the network through:

- sockets  
- HTTP libraries  
- TCP/UDP APIs  
- higher‑level frameworks  

But these are **advanced topics** and not part of beginner Learn‑D.

Beginner Learn‑D focuses on:

- console input  
- console output  
- files  
- basic data types  
- basic control flow  

Networking comes much later.

---

## 7. Unicode and networks

When sending text across a network:

- use **UTF‑8** or **UTF‑16**  
- do **not** send `dstring` directly  
- do **not** assume ASCII  

UTF‑8 is the standard encoding for network communication.

This is why D uses `string` (UTF‑8) for most text.

---

## 8. Why networks matter

Networks matter because they allow programs to:

- communicate with servers  
- access websites  
- send messages  
- download data  
- upload files  
- interact with other computers  

Most modern software depends on networking.

---

## See also

- glossary/device.md  
- glossary/ascii.md  
- glossary/unicode.md  
- glossary/string-literal.md  
- glossary/console.md
