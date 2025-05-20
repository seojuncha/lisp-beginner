;; 3 elements in the cons cell
(defparameter *cons-val* (cons 1 (cons 2 (cons 3 nil))))
(format t "cons-val's first element: ~a~%" (car *cons-val*))
(format t "cons-val's other elements: ~a~%" (cdr *cons-val*))

;; is same with below
(defparameter *list-val* (list 1 2 3))
(format t "list-val's first element: ~a~%" (first *list-val*))
(format t "list-val's other elements: ~a~%" (rest *list-val*))

;; Note that cdr and rest always return LIST
;;; append and nconc
(defparameter *list-1* (list 1 2))
(defparameter *list-2* (list 3 4))
(defparameter *list-3* (append *list-1* *list-2*))
(format t "list-3 : ~a~%" *list-3*)

(format t "modify list-1~%")
(setf (car *list-1*) 0)
(format t "modified list-1: ~a~%" *list-1*)
(format t "list-3: ~a~%" *list-3*)

(format t "modify list-2~%")
(setf (car *list-2*) 0)
(format t "modified list-2: ~a~%" *list-2*)
(format t "list-3: ~a~%" *list-3*)