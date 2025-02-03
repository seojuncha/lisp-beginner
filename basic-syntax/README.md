# Basic Syntax of Common Lisp
- s-expresssions
- forms
- atoms and lists
- symbols

# s-expressions
I think, almost things in Lisp are s-expressions.(Not all? I'm not sure yet). However, the important thing is 

> "That s-expression is valid? Is it evaluated?"

Not important which is s-expression, however we must know what it is to read and understand various documents.

The s-expression stands for "Symbolic Expression". It consists of ***atoms*** and ***lists***.
What is atoms and what is the lists? 

Kinds of atoms
- string
- number

String and numbers are self-evaluating objects. It means that if you type a number or a double-quoted text on your REPL, it doesn't return an error. Success to evaluate.

- symbols


lists

# forms
How to know if it is forms or not? The best simple thing to help it is to check if it can be evaluated.
There are three kinds of forms, function forms, macro forms, and special forms.
ALl of them have a simple rule. If it is enclsed by parenthesis, which is a list, 

# symbols
Does it have a name? Great. It's a symbol!
Tour of symbols in Common Lisp.


# Examples

string s-expressions
```lisp
;; "hello" can be evaluated. It is valid s-expressions and forms.
CL-USER> "hello"
"hello"

CL-USER> hello
SYSTEM::READ-EVAL-PRINT: variable HELLO has no value
```



number s-expressions
```lisp
;; 42 is a self-eveluating object.
CL-USER> 42
42
```

list s-expressions
```lisp
CL-USER> ()
NIL

;; (1 2) is a s-expression, but is not a form because it is not evaluted.
CL-USER> (1 2)
EVAL: 1 is not a function name        ; try using a symbol instead

;; It is a s-expression. The list, (+ 1 2) starts with a symbol, +.
CL-USER> (+ 1 2)
3
```

# Legal List expression.
Think about below examples.


# Resources
https://www.lispworks.com/documentation/HyperSpec/Front/X_AllSym.htm  
https://gigamonkeys.com/book/