;;; macro !
;;; quote, back quote and comma

(defparameter *quoted-list* '(1 2 3))
(format t "quoted list is ~a~%" *quoted-list*)

(setq *quoted-list* '((+ 1 2) (+ 2 3) 3))
(format t "quoted list is ~a~%" *quoted-list*)

;;; another example
(defparameter *var1* (list '(+ 1 2) '(+ 2 3) 3))
(format t "~a~%" *var1*)

(defparameter *var2* `(list (+ 1 2) (+ 2 3) 3))
(format t "~a~%" *var2*)
;;; *var*1 is not same with *var2* because of LIST symbol

(setq *var2* `((+ 1 2) (+ 2 3) 3))
(format t "~a~%" *var2*)
;;; => now it's same