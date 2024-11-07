# Variables
Things must known.
- life-cycle
- local and global variables
- which symbol is used?
- Variouse way to assign value into a variable.

Common Lisp's variable is both of dynamiced-type and strongly-typed also. 


## Binding
Binding is assiciation between a variable name and a value.

### Lexical and Dynamic
Two types of Common Lisp variable binding.
- Lexical(static) binding
- Dynamic(spacial) binding

### Lexical binding

Lexical binding is similar with a local variable in other programming langues. Dynamic binding is similar with a global variable. Both of them are concerned with a variable life cycle and the access scope.

Common use case of lexical binding is a function parameter. The parameters is given arguments' value and store it into parameter variables.

```lisp
(defun foo (a b)
  (write a))

(foo 1 2)
(write a)
```

The paramter, leical bounded in the funciton FOO, **a** is a variable that might store the number atom, 1. However, the variable **a** is bounded to the function block. As a result, the last form, (write a), cannot be evaluated since the variable **a** is not accesible.


### Special Operator: LET
Syntax: 

> (let (variables*) body-forms*)

```lisp
CL-USER> (let ((a 10) (b 3) c) (format t "a: ~d, b: ~d, c: ~d ~%" a b c))
a: 10, b: 3, c: NIL
NIL
```

    (let ((a 10) (b 3) c) 
      (format t "a: ~d, b: ~d, c: ~d ~%" a b c))

variables* : (a 10) (b 3) c<br>
body-forms* : (format t "a: ~d, b: ~d ~%" a b)<br>

a and b are function parameters of LET

## Shadowing

## Dynamic binding
Dynamic binding is similar with a global variable in other programming language. It can be accessed and modified across functions or blocks.

### defvar and defparameter
Note that, the asterisks are 감싸다 to a variable name, For example, \*global-var\*.


## Assignment
There are two symbols to assign a value to a variable, setq and setf. What's difference between them?

> (setf place newvalue)

*setf* is macro that can be expanded to *setq* if a *palce* is a variable. So what's the place means? 
The place is just a place avaialable to store a value, which might be object. 
The *place* includes a variable, but not viceverse. *setf* would be used in most cases.