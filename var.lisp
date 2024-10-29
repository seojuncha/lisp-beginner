#!/usr/bin/env clisp

;; https://gigamonkeys.com/book/variables

;; global variables
;; defvar & setq
(defvar x 123)
(write x)
(write-line " ")

;; The asterisks(*) in the name are a Lisp name convention for global variables.
(defvar *data* nil)

;; defvar vs defparameter
;; same: for global variables
;; not same: initilize parameter
(defvar *a*)  ;; is allowed
;;(defparameter *b*)  ;; is NOT allowed!
(defparameter *b* 'b "b is created by defparameter")

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
