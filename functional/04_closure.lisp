;;; closure and lexical binding
;;; what is the closure?

(defparameter *fn*
  (let ((my-count 0))  ; variable, my-count, is lexical binding.
    (defun foo ()      ; define a funciton
      (incf my-count))))

(format t "~a~%" (find-symbol "FOO"))
(format t "~a~%" (function foo))
;(format t "~a~%" (function *fn*)) ; illegal. *fn* is not a function object.
(format t "~a~%" *fn*)

(format t "~a~%" (foo))
(format t "~a~%" (foo))
(format t "~a~%" (foo))

(format t "call fn : ~a~%" (funcall *fn*))
(format t "call fn : ~a~%" (funcall *fn*))
(format t "call fn : ~a~%" (funcall *fn*))
(format t "~a~%~%" (type-of *fn*))

;;; okay. foo is needed yet?? I think, not.
(defparameter *foofn*
  (let ((my-count 0))
    #'(lambda () (incf my-count))))

(format t "foofn: ~a~%" *foofn*)
(format t "foofn: ~a~%" (funcall *foofn*))
(format t "foofn: ~a~%" (funcall *foofn*))
(format t "foofn: ~a~%" (funcall *foofn*))

(defparameter *boofn*
  (defun boo ()
    (let ((v 0))
      (incf v)
      (when (= v 5) (setq v 0)))))
 

(format t "~a~%" *boofn*)
(format t "what is boofn?: ~a~%" (type-of *boofn*))
(format t "~a~%" (function boo))
(format t "call boo: ~a~%" (funcall *boofn*))

;;; why it is used?
