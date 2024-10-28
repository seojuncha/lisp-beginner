#!/usr/bin/env clisp

(defun add (n1 n2)
 (+ n1 n2)
)

(defun print-hello ()
  (princ "hello")
)

(defun print-param (param)
  (print param)
)

(defun return-param (param)
  (return-from return-param 99)
  param
)

(princ (add 1 2))
(terpri)
(print-hello)
(print-param 1)
(print-param '1)

(write (return-param 1))
(terpri)


;; keyword parameters
(defun show (a &key b c)
  (write (list a b c))
)

;;(show 1 2)
;;(show :a 1)
;;(terpri)
;;(show :a 1 :b 2)
;;(terpri)
(show 99 :b 2 :c 3)
(terpri)
  
 
;; todo: lambda, mapping
