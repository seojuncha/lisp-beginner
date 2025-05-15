#!/usr/bin/env clisp

(defun fn (n)
  (loop for i from 1 to n 
   do (format t "Hello World") (terpri))
)

;;(dotimes (n 4)
 ;; (print "Hello World"))

(fn (read))
