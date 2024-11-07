#!/usr/bin/env clisp
;;;; setf and setq

(format t "~% Use setq~%")
(setq a 1)
(format t "Initial a is ~d~%" a)
(setq a (+ 1 1))
(format t "Next a is ~d~%" a)
(setq a (+ 1 a))
(format t "Final a is ~d~%" a)

(format t "~% Use setf~%")
(setf a 1)
(format t "Initial a is ~d~%" a)
(setf a (+ 1 1))
(format t "Next a is ~d~%" a)
(setf a (+ 1 a))
(format t "Final a is ~d~%" a)

(format t "~% macroexpand of setf~%")
(write (macroexpand '(setf b 9)))

;;; TODO: Other use cases, place is not a variable.