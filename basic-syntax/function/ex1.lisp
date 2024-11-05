#!/usr/bin/env clisp

(defun hello-world ()           ; empty paramter list
  "This function prints the string, Hello World!"
  (format t "Hello World!"))

(defun print-number (num)
  (format t "~a~%" num))

(defun add (a b)   ; parameters: a and b
  (+ a b))         ; return the last evaluated value

(defun foo1 (a &optional b c)
  (list a b c))

(defun foo2 (a &optional (b 10) (c 9))
  (list a b c))

(defun foo3 (a &optional (b 10) (c 9 c-supplied-p))
  (list a b c c-supplied-p))

(defun bar (a b &rest c)
  (list a b c))

(defun boo (a &key b c)
  (list a b c))

(print-number 12)

;;; Below is not evaluated. Think about the reason.
;;; When a print-number function is called, the paramter of the function, num, is given (12 13).
;;; However, (12 13) is a list. Lisp list is s-expression. The evaluator try to evaluate (12 13).
;;; There is simple rule! All legal list forms start with a symbol except for three kinds of list forms.
;;; For example, (list 1 2). However, the number 12, in (12 13), is not a symbol. It is a number, atom.
; (print-number (12 13))

;;; How about below?
(print-number '(12 13))
(terpri)

(format t "TEST optional parameter~%")
(format t "~a~%" (foo1 '1))
(format t "~a~%" (foo1 '1 '2))
(terpri)

(format t "TEST optional parameter with a default value~%")
(format t "~a~%" (foo2 '1))
(format t "~a~%" (foo2 '1 '2))
(terpri)

(format t "TEST optional parameter with a default value~%")
(format t "~a~%" (foo3 '1))
(format t "~a~%" (foo3 '1 '2))     ; parameter c isn't supplied by a caller.
(format t "~a~%" (foo3 '1 '2 '3))  ; parameter c is supplied by a caller.
(terpri)

(format t "TEST rest parameter~%")
(format t "~a~%" (bar '1 '2))       ; no arguments for the parameter c so is NIL.
(format t "~a~%" (bar '1 '2 '3 '4))
(terpri)

(format t "TEST keyword parameter~%")
; (format t "~a~%" (boo :a 1))      ; error! parameter a is not a keyword parameter.
(format t "~a~%" (boo 1 :b 2))
(format t "~a~%" (boo 1 :b 2 :c 3))
(format t "~a~%" (boo 1 :b 2 :c 'a))
