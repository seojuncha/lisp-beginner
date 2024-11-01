# DRAFT
Use the REPL to understand the concepts more easily and do things like a programmer's being.
The terminology in Lisp is somewhat hard to be taken to me who has experience along with C/C++ and Python also during 10 years more. 

TODO
- Refine things of Lisp syntax, s-expression, form, symbol and so on, with examples.
- Compare those things with C++ or Python.
- Add examples to prove that Lisp syntax being in here is correct by using REPL.

# Reader and Evaluator
## Langauge processor
The language processor works in the most language

in: text stream

process: tokenize and something.

out: abstract syntax tree, binary code.

-> we don't know the internal things, and don't care about.

How about Lisp? Lisp divides it into two phase, tokenize and evaluate.

## Two black boxes in LISP
Reader and Evaluator

Reader's input: string, chracter(text)
Reader's output: Lisp object(s-expression)
-> no semantic decision.

The evaluator defines a syntax of Lisp forms that can be build out of s-expressions.

(foo 1 2)     ; s-expression even also form
("foo" 1 2)   ; s-expression but not form

reader , s-expression
 : a normal s-expression can be interpreted by a reader.
evaluator , form
 : a normal form can be interpreted by an evaluator.


# s-expressions, forms, symbols
Basic elements
- atoms (is everything!)
- lists ({elements} {elements} ...)

### atoms
number, string, list.

if I enter (1 2) into REPL, there is an error.
why?
(1 2) is a list. but not a form.
which means, (1 2) couldn't be evaluated.
what's rule?

{elements} can be s-expressions, which is atoms or lsits.


symbols
- Names used in Lisp programs.
- all symbols are upper case.
- the reader uses the look-up table to find an already define symbol.
  If it is not found, add a symbol to the loop-up table.

Parse example

    (defun hello-world (format t "hello world"))
    |-----------------list---------------------|
    |sym1     sym2     |           list        | ;; two symbols(defun, hello-world) and one list((format t "hello world"))
                      |sym3  sym4    string   | ;; two symbols(format, t), one string("hello world")

> TODO: Add examples!

### s-expresssion (is evaluated as Lisp forms!)
Simply speaking, s-expressions is not Lisp forms but Lisp forms is s-expressions, eventhough not all.
atoms and lists.
* lists
 ()
 (1 2)
 ("1" 2)

> s-expresssions can be evaluated as Lisp forms.

### form
: can be evaluted? it is the form.

### symbol (Lisp object)
all names that are represented by objects.
number, string, list is not a symbol!!

self-evaluating objects. (TODO: Add examples)

1    ; is working<br>
"a"  ; is working<br>
t    ; is working<br>
nil  ; is working<br>
a    ; not working, a is not number, string, list, so it is symbol, should be a variable. but doesn't have a value.<br>

how about list? how the list is evaluated?<br>
: starts with a symbol (a **function**, a **macro**, a **special operator**)

###  function call
(function-name arguments*) ; is a list and a form.
: function-name is also symbol.
Evaluation process,
 1. evaluate arguments (from left to right)
 2. pass them to function
 3. return a result.

### special operators
a symbol, IF, QUOTE, and so on.
The operators have their own rules to evaluate other expressions.

### macro

## function
: When a function is defined, there are two things.
 create a function object, and name it.
has a name? -> it's a symbol.
is a function object? ->


## variable
lexical variable or dynamic variable
no the type of object -> dynamic type
however, the type error is detected as an error!
The variable doesn't have a value itself but have a reference to objects.

LET : binding form
: makes rebinding objects.
(let () )

global variables
DEFVAR(unbounded), DEFPARAMETERS(bounded)

## macro
in: s-expressions
out: form.
- The macro is not evaluated directly, just return a form(expansion) which can be evaluated by a eveluator.
- two phase compile.

Defines it's own syntax, determining how the s-expressions it's passed into Lisp forms.
Macro helps a compiler.
The compile expands the code taken as the macro.
Then, actual code is running.
