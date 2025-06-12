;;; backquote with comma

(defparameter var1 `(a b ,(list 1 2)))
(format t "var1: ~a~%" var1)

;; slicing in the outer list.
(defparameter var2 `(a b ,@(list 1 2)))
(format t "var2: ~a~%" var2)

;;; s-expression in backquote is data but not with comma which is evaluated.
(defparameter *quoted-list* `((+ 1 2) (+ 2 3) 3))
(format t "quoted list is ~a~%" *quoted-list*)

(setq *quoted-list* `((+ 1 2) ,(+ 2 3) 3))
(format t "quoted list is ~a~%" *quoted-list*)

;;; how about quoted expresssion in backquoted expression?
(defparameter *var3* `((+ 1 2) ',(+ 2 3) 3))
(format t "~a~%" *var3*)

(defmacro explain-exp (exp)
  `(format t "~a = ~a~%" ',exp ,exp))
(explain-exp (+ 2 3))

(defmacro foo (exp &body body)
  `(let ((x ,exp))
     (when x
           ,@body))) ; ,body is illegal!

(format t "~%~a~%" (macroexpand-1 '(foo (< 2 3) (format t "true when~%"))))

(foo (< 2 3) (format t "true when~%"))