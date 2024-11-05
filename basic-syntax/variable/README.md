# Variables
Things must known.
- life-cycle
- local and global variables
- which symbol is used?
- Variouse way to assign value into a variable.


# Special Operator: LET
Syntax: 

> (let (variables*) body-forms*)

    CL-USER> (let ((a 10) (b 3)) (format t "a: ~d, b: ~d ~%" a b))
    a: 10, b: 3
    NIL

    (let ((a 10) (b 3)) 
      (format t "a: ~d, b: ~d ~%" a b))

variables* : (a 10) (b 3)<br>
body-forms* : (format t "a: ~d, b: ~d ~%" a b)<br>

# Shadowing


# Assigning
setf vs setq