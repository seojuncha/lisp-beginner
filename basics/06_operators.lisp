;;; 1. Basic mathmatical operators
(format t "1. Basic Math Operators~%")

;;; +, -, *, /, mod
;;; incf, decf
(defparameter *x* 3)
(defparameter *y* 4)

(format t "x=~a, y=~a~%" *x* *y*)

;; binary expression with two operands
(format t "x + y = ~a~%" (+ *x* *y*))
(format t "x - y = ~a~%" (- *x* *y*))
(format t "x * y = ~a~%" (* *x* *y*))
(format t "x / y = ~a~%" (/ *x* *y*))
(format t "x mod y = ~a~%" (mod *x* *y*))

(format t "x + y + x = ~a~%" (+ *x* *y* *x*))
(format t "x - y - x = ~a~%" (- *x* *y* *x*))
(format t "x * y * x = ~a~%" (* *x* *y* *x*))
(format t "x / y / x = ~a~%" (/ *x* *y* *x*))

;;; 2. Number Representation
(format t "2. Number Representation~%")
;; hexadecimal representation
(format t "0xFF01=~a~%" #xFF01)

;; binary representation
(format t "0b0101=~a~%" #b0101)

;;; 3. Logical operators
;;; and, or, not
;;; return: t or nil
(format t "3. Logical Operators~%")
(format t "t && t = ~a~%" (and t t))
(format t "t && nil = ~a~%" (and t nil))
(format t "t || t = ~a~%" (or t t))
(format t "t || nil = ~a~%" (or t nil))
(format t "not t = ~a~%" (not t))

;;; 4. Comparisons
(format t "4. Comparisions~%")
;;; Operators:
;;; Numeric) =, /=, >, <, >=, <=
;;; Cahraceter)
;;;  case-sensitive) char=, char/=, char<, char>, char<=, char>=
;;;  case-insensitive) char-equal, char-not-equal, char-lessp, char-greaterp, char-not-greaterp, char-not-lessp
;;; String)
;;;  case-sensitive) string=, string/=, string<, string>, string<=, string>=
;;;  case-insensitive) string-equal, string-not-equal, string-lessp, string-greaterp, string-not-greaterp, string-not-lessp

(format t "3 > 4 = ~a~%" (> 3 4))
(format t "3 < 4 = ~a~%" (< 3 4))