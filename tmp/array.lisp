#!/usr/bin/env clisp

;; create an array.
;; note that the array is a fixed size memory.

;; 1-dimension array.
(setf arr (make-array '(5)   ;; first parameter is a size with dimension
           :initial-contents
           '(0 1 2 3 4)))

(write arr)
(terpri)

(setf two-arr (make-array '(4 2)))  ;; 2 by 2 array
(write two-arr)
(terpri)

