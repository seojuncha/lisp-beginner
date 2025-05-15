#!/usr/bin/env clisp

;;;; Very simple single-quoted s-expressions.

(format t "quoted number: ~d~%" '1)
(format t "unquoted number: ~d~%" 1)

(format t "quoted list: ~a~%" '(+ 1 2 3))
(format t "unquoted list: ~a~%" (+ 1 2 3))