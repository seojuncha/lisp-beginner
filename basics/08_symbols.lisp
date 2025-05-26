;;; s-expression and symbols
;;; well-known programming language
;;; one black box; compiler or interpreter
;;; source file -> black box -> machine code
;;; However, in Lisp
;;; two black boxes;
;;;  reader: text into Lisp objects, s-expression rules
;;;  eveluator: the semantics of the languages in terms of those objects.
;;;             syntax of Lisp forms

;;; s-expressions: lists and atoms
;;;  lists -> ( anything )
;;;  atoms -> number, string, name(symbol)
;;; symbol table in package
;;; interns symbols
;; how to find a current package
(format t "~a~%" (find-package *package*))

;; find a symbol
(format t ">>> Symbols~%")

;; Note that a symbol is stored as upper case letters.
(defparameter *a* nil)
(format t "try to find *a*: ~a~%" (find-symbol "*a*"))
(format t "try to find *A*: ~a~%" (find-symbol "*A*"))

(format t "defun is a symbol!: ~a~%" (find-symbol "DEFUN"))

;; keyword symbol
;; starts with a colon(:)
(defparameter pl (list :pa 1 :pb "1"))
(format t "pl=~a~%" pl)
(format t "try to find symbol, \':pa\' in the current package: ~a~%" (find-symbol "PA"))
(format t "try to find symbol, \':pa\' in the KEYWORD package: ~a~%" (find-symbol "PA" "KEYWORD"))

;; get symbol name
(format t "symbol name of \':pb\' is ~a~%" (symbol-name :pb))

;; quote (')
(format t ">>> quoting~%")
;; - unevaluating
(format t "quote: ~a~%" (quote (+ 1 2)))
(format t "quote: ~a~%" '(+ 1 2))

(defparameter quoted-q 'q)
(format t "symbol q-plus: ~a~%" (find-symbol "QUOTED-Q"))
(format t "symbol q-plus value: ~a~%" (find-symbol "Q"))
(format t "symbol name quoting: ~a~%" (symbol-name 'q))

(defparameter my-q-list '(1 2 3))
(format t "car: ~a~%" (car my-q-list))
(format t "cdr: ~a~%" (cdr my-q-list))

(defparameter my-list (list 1 2 3))
(format t "car: ~a~%" (car my-list))
(format t "cdr: ~a~%" (cdr my-list))

(defparameter plus-list '(+ 1 2 3))
(format t "car: ~a~%" (car plus-list))
(format t "cdr: ~a~%" (cdr plus-list))