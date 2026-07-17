# Domain

In mathematics, the **domain** of a function is the complete set of input values for which the function is **defined**.

A function’s domain is the boundary between:

- values where the function has meaning  
- values where the function is undefined  

The domain is not optional.  
The domain is not advisory.  
The domain is the **legal input space** of the function.

---

## 1. What the mathematical domain is

For a function \( f \), the domain is:



\[
\text{Dom}(f) = \{ x \mid f(x) \text{ is defined} \}
\]



This is the set of all \( x \) for which the expression \( f(x) \) has mathematical meaning.

Examples:

- \( f(x) = \sqrt{x} \)  
  Domain: \( x \ge 0 \)

- \( f(x) = \frac{1}{x} \)  
  Domain: \( x \ne 0 \)

- \( f(x) = \ln(x) \)  
  Domain: \( x > 0 \)

The domain is determined by **mathematical constraints**, not by implementation.

---

## 2. Why the domain matters

The domain determines:

- where the function exists  
- where the function is meaningful  
- where the function can be reasoned about  
- where the function can be evaluated  
- where the function can be differentiated or integrated  

Outside the domain, the function is **undefined**.  
Undefined means **no value exists** — not error, not exception, not special case.  
Simply: the function does not exist there.

---

## 3. Domain violations

A domain violation occurs when a value is used **outside** the function’s defined input space.

Examples:

- \( \sqrt{-5} \)  
- \( \ln(0) \)  
- \( \frac{1}{0} \)

These expressions have **no mathematical meaning**.

A domain violation is not a “bad input.”  
It is an attempt to evaluate a function **where the function does not exist**.

---

## 4. Domain vs codomain vs range

### Domain  
The set of legal **inputs**.

### Codomain  
The set of **possible outputs** the function is allowed to map into.

### Range  
The set of **actual outputs** the function produces.

Example:

For \( f(x) = x^2 \):

- Domain: all real numbers  
- Codomain: all real numbers  
- Range: all non‑negative real numbers

The domain is about **where the function starts**.

---

## 5. Determining the domain

The domain is determined by:

- algebraic constraints  
- arithmetic constraints  
- analytic constraints  
- geometric constraints  
- logical constraints  

Examples:

- Division requires nonzero denominators  
- Square roots require non‑negative radicands  
- Logarithms require positive arguments  
- Trigonometric functions may have periodic or restricted domains  
- Piecewise functions define their own domain segments  

The domain is always determined by **mathematics**, not by implementation.

---

## 6. Explicit vs implicit domains

### Explicit domain  
The domain is stated directly:



\[
f: [0, \infty) \to \mathbb{R},\quad f(x) = \sqrt{x}
\]



### Implicit domain  
The domain is inferred from the expression:



\[
f(x) = \frac{x+1}{x-2}
\]



Implicit domain: all real numbers except \( x = 2 \).

Both forms are valid.  
The domain is always the set of values for which the function is defined.

---

## 7. Summary

The **mathematical domain**:

- is the set of legal input values  
- is determined by mathematical constraints  
- defines where the function exists  
- separates defined behavior from undefined behavior  
- is essential for correctness in mathematics  
- is independent of implementation  
- is the starting truth of any function  

The domain is the **foundation** of a function’s meaning.

