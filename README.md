# lisp-beginner

# Reader and Evaluator
## Black box
- Langauge processor
- In most programming langue, the language processor is a black box.

## Two black boxes in LISP
Reader and Evaluator

Reader's input: string, chracter(text)
Reader's output: Lisp object(s-expression)
-> no semantic decision.

The evaluator defines a syntax of Lisp forms that can be build out of s-expressions.

(foo 1 2)     ; s-expression even also form
("foo" 1 2)   ; s-expression but not form


# s-expressions
Basic elements: atoms, lists
atoms is everything!
lists: ({elements} {elements} ...)

{elements} can be s-expressions, which is atoms or lsits.
so that, below is acceptable.
: (atom atom atom)
: ((list) atom (list))

s-expresssions can be evaluated as Lisp forms.

symbols
: Names used in Lisp programs.
: all symbols are upper case.
: the reader uses the look-up table to find an already define symbol.
  If it is not found, add a symbol to the loop-up table.

Parse example
(defun hello-world (format t "hello world"))
|-----------------list---------------------|
|sym1     sym2     |           list        | ;; two symbols(defun, hello-world) and one list((format t "hello world"))
                   |sym3  sym4    string   | ;; two symbols(format, t), one string("hello world")

Testing
> "Hello, World"
"Hello, World"
> ("Hello, World")
EVAL: "Hello, World" is not a function name; **try using a symbol instead.**
**All legal list forms start with a symbol!**

