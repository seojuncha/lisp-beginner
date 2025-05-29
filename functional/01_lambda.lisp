;; lambda: anonymouse function

(defparameter *foo*
  (defun foo () (format t "this is foo~%")))

;; *foo* is a symbol that is a function object
(format t "*foo* is: ~a~%" *foo*)
; (format t "*foo* is: ~a~%" (function *foo*))

(format t "lambda add: ~a~%" ((lambda (x y) (+ x y)) 1 2))

(defparameter *boo*
  #'(lambda (x y) (+ x y)))
(format t "*boo* is: ~a~%" *boo*)


(format t "call boo: ~a~%" (funcall *boo* 2 2))