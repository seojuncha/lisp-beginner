#!/usr/bin/env clisp

;;; Declare and assign a lexical variable with LET function.
(format t "~%  Lexical variables with LET function~%")
(let ((a 8) (b 3) c)
  (format t "a: ~d, b: ~d c: ~d~%" a b c))

;;; Lexical binding in a function
(format t "~%  Lexical binding of a variable in a function block")

(defun foo (a)
  (format t "~a~%" a))

;;; Lexical binding in a function with LET function.
(defun bar (a)
  (let ((b 9))
    (format t "a: ~a, b: ~a~%" a b)))

;;; Prints the function result.
(foo 99)
(bar 10)
; (write a)   ; It is illegal. The variable, a, doesn't exist in here.

(format t "~%  Shadowing of lexical variables~%")
(let ((a 1))
  (format t "Outer most variable a: ~d~%" a)
  (let ((a 2))
    (format t "Outer variable a: ~d~%" a)
    (let ((a 3))
      (format t "The most inner variable a: ~d~%" a))))


(format t "~%  Modify lexical variables~%")
(let ((a 1))
  (format t "initial a: ~d~%" a)
  (incf a)
  (format t "increate 1 of a: ~d~%" a)
  (let ((b a))
    (format t "initial b: ~d~%" b)
    (incf b)
    (format t "increate 1 of b: ~d~%" b)
    (format t "a: ~d~%" a))
  (format t "last a: ~d~%" a))