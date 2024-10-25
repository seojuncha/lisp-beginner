#!/usr/bin/env clisp

(setq plus (+ 1 2))
(write plus)
(terpri)

(setq x (/ 1 2))

(write x)
(terpri)

(format t "type of x=~s" (type-of x))
(terpri)

(format t "x=~f~%" x)
(format t "x=~d~%" x)

;; logical operation(bitwise)
(setq a 13) ;; 13 = 0b1101
(setq b 7)  ;; 7  = 0b0111
(write-line "-------------------")

;;   0b1101 
;; & 0b0111 
;; = 0b0101 = 5
(write (logand a b))  ;; 'logand' is not same with 'and'
;;(format t "and: ~b" (logand a b))
(terpri)

(write (logior a b))
;;(format t "or : ~b" (logior a b))
(terpri)

