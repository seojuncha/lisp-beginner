#!/usr/bin/env clisp

(defun f (n l)
  (loop for r in l 
     do (dotimes (i n) (format t "~d~%" r)))
)

(f 4 '(1 2 3))
(format t "---------------------~%")
(f 1 '(1 2 3))
