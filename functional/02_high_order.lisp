;; high_order.lisp
;; what is the high order function?

;; define a function
(defun foo (x)
  (+ 2 x))
;; >> function object and it's name

;; 'function' is a special operator to get a function object
;; argument is a function name.
(format t "funciton foo >> ~a~%" (function foo))

;; #' do samething with 'function'
(format t "funciton foo >> ~a~%" #'foo)

;; okay, there is the function object I defined.
;; How can I invoke it? => 'funcall' and 'apply'
(format t "use funcall: ~a~%" (funcall #'foo 1))

;; use the function object as a funciton parameter
(defun use-foo (fn y)
  (format t "use foo : ~a~%" (funcall fn y)))

;; pass a funciton object
(use-foo #'foo 3)

;; good. let's use 'apply'
;; what's difference with 'funcall' -> argument handling
;; define another function to get a number of arguments
(defun boo (a b c d)
  (+ a b c d))

(format t "use apply: ~a~%" (apply #'boo '(1 1 1 1)))
(format t "use apply: ~a~%" (apply #'foo '(1)))

;; make simplify
(format t "funcall + : ~a~%" (funcall #'+ 1 2))
(format t "apply + : ~a~%" (apply #'+ '(1 2)))

;; functino that return a function
(defun adder (a b)
  #'(lambda (x) (+ x a b)))

(format t "direct call adder: ~a~%" (adder 1 2))
(format t "funcall adder: ~a~%" (funcall (adder 1 2) 1))
(format t "same with: ~a~%" (funcall #'(lambda (x) (+ x 1 2)) 1))