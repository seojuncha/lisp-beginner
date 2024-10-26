#!/usr/bin/env clisp

(setq a 10)

;; similar do-while?!
(loop
  (incf a 1)
  (write a)
  (terpri)
  (when (= a 14) (return t))
)

;; loop for with "list"
;; TODO: later! need a list
;;(loop for 
;; do ()
;;)

;; loop for with "from to"
;; inclusive range
(loop for a from 1 to 5 ;; local variable
  do (when (> a 3) 
       (print a))
)

;; skip others now. see it later
;; do
;; dotimes
;; dolist
