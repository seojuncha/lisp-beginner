#!/usr/bin/env clisp


(write (equal 1 '1))
(terpri)
(write (equal 1 1))
(terpri)

(princ "-----------------")
(terpri)
(write (eq 1 '1))
(terpri)
(write (eq 1 1))
(terpri)

(princ "-----------------")
(terpri)
(write (eql 1 '1))
(terpri)
(write (eql 1 1))
(terpri)

