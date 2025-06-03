;;; own version setq to assign two variables with a same value.
(defparameter *var* nil)

;; one variable and one expression, form
(setq *var* (+ 1 2))
(format t "*var* is ~a~%" *var*)

;; to assign two variables with a same value
;(defparameter x nil) ; dummy x (defparameter y nil) ; dummy y
;(defparameter e (+ 1 2))  ; dummy e
;(progn
;  (setq x e)
;  (setq y e))
;; -> that is a code we have to produce.

;;; define macro
(defmacro setq2 (x y e)
  (list 'progn (list 'setq x e) (list 'setq y e)))
;;; this macro will be expanded to
;;;  (progn (setq x e) (setq y e))

(defparameter v1 1)
(defparameter v2 2)
(defparameter *setq2-var* (setq2 v1 v2 (+ 2 3)))
(format t "setq2-var is ~a~%" *setq2-var*)

(defmacro setq3 (x y e)
  `(progn (setq ,x ,e) (setq ,y ,e)))
(defparameter *setq3-var* (setq3 v1 v2 (+ 2 3)))
(format t "setq3-var is ~a~%" *setq3-var*)
