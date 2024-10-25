#!/usr/bin/env clisp

;; global variables
;; defvar & setq
(defvar x 123)
(write x)
(write-line " ")

(setq x 10)
(write x)
(terpri)

;; local variables
;; let & prog

(let ((x 'a)) (format t "x=~s~%" x))
(let ((x '1)) (format t "x=~d~%" x))
(let ((x )) (format t "x=~d~%" x))
(write-line "-------------")
(let ((x '1)(y '2)) (format t "x=~d~%y=~d" x y))

(write-line "-------------")
(prog ((x '(1 2 3))) (format t "x=~a~%" x)) ;; ~a: array
(let ((x '(1 2 3))) (format t "x=~a~%" x)) 

(write-line "-------------")
(let ((x 13) (y 7))
 (setq z (logand x y))
 (format t "z=~d~%" z))

;(write y)
