#!/usr/bin/env clisp


;; like a structure in C
(setf (get 'book 'title) '(c programming))
;;(setf (get 'book 'author) '(Dennis Ritchie))
(setf (get 'book 'author) "Dennis Ritchie")

(write (get 'book 'author))
(terpri)
;;(write (get 'book)) ;; invalid syntax!

(write (symbol-plist 'book))
(terpri)
