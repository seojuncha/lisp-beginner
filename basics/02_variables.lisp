;;;; Core Concepts
;;;; `defparameter`, `defvar`, `defconstant` => global variable and constant value
;;;; `let` and `let*` => new binding
;;;; `setf` and `setq` => assignment

(defvar *x* "string x")
(format t "first *x*: ~a~%" *x*)

(setf *x* "not string x")
(format t "second *x*: ~a~%" *x*)

(defparameter *y* 99)
(format t "*y*: ~a~%" *y*)

;;; declare a constant variable
(defconstant +pi+ 3.14)

(let ((x 1)
      (y 2)
      (pi+1 (+ +pi+ 1)))
  (format t "x + y = ~a~%" (+ x y))
  (setf x 5)
  (format t "x + y = ~a~%" (+ x y))
  (format t "pi + 1 = ~a~%" pi+1))

;; invalid, out of scope
; (format t "x = ~a~%" x)

;;; 'let' vs 'let*'
(let* ((x 2)
       (y (* x 5)))
  (format t "y = ~a~%" y))