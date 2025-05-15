# Common Lisp Macros
A macro is a function that takes **s-expressions as arguments** and **returns a Lisp form(expension)** that's then evaluated in place of the macro form.


```lisp
(defmacro backward (expr) (reverse expr))

;; (expr) => ("hello" t format)
;; (reverse expr) => (format t "hello")
(backward ("hello" t format))

(macroexpand-1 '(backward ("hello" t format)))
;; (FORMAT T "hello") ;
;; T
```