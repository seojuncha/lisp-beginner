#!/usr/bin/env clisp

;; cond
;; if -> else if -> else if -> ... -> else
(setq a 3)

(cond 
 ((< a 5) ;; test1
  (print "a is smaller than 5")) ;; action1
 ((= a 10) ;; test2
  (print "a is 10")) ;; action2
 (t (print "default"))) ;; test3 and action3


;; if
;; (if-then)
(if t (print "just true"))
(if nil (print "nil??"))

(if (> a 5)
 (print "a is smaller than 5")
 (print "not smaller than 5"))


;; when
;; if true: do something
(when (> a 5) ;; will be nil
 (print "will be nil"))

(when (< a 5) 
 (print "is t"))

;; case
(case a
 (1 (print "is one"))
 (2 (print "is two"))
 (3 (print "is three"))
 (4 (print "is four")))


;; multiple conditions
(setq b 10)
(when (= a 3)
 (if (< b 90)
  (print "=3 <90")
  (print "=3 >=90")))
