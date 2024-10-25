#!/usr/bin/env clisp

(+ 1 2)

(write (+ 1 2))  ;; in line
;(write-line "")

(write '(+ 1 2))  ;; in line
;; write-line method couldn't accept quotation mark, but only get a string type.
;(write-line '(+ 1 2))  
;(write-line "")


(setq x 123)
(prin1 x)
(prin1 "aa") ;; no new line
(write-line "----------------------")
(print x) ;; no new line
(terpri)
(write-line "----------------------")
(print "aa")
(terpri)


;; formatted output
(setq y 333)
(format t "y = ~d" y)
(terpri)
(format t "y = ~f" y)
(terpri)
(format t "y = ~s" y)
(format t "y = ~s" y)
(terpri)
(write-line "----------------------")
(format t "x = ~D~%y = ~D" x y)
