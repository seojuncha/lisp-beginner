;;; when
;;;  evaluate multiple forms

(defparameter *x* 5)

(when (< *x* 6)
      (format t "x is less than 6~%")
      (format t "next paragraph in when~%"))

;;; unless
;;;  evaluate multiple forms
(unless (> *x* 6)
  (format t "x is not larger than 6~%")
  (format t "next paragraph in unless~%"))

;;; if
(if t
    (format t "It is true always~%") ; true(T) condition
    (format t "not reached in here~%")) ; false(NIL) condition


;;; executes multiple forms by using the special operator: 'progn'
(if (< *x* 6)
    (progn
     (format t "first expression in progn~%")
     (format t "second expression in progn~%"))
    (format t "not reached~%"))

;;; cond
(defparameter *a* t)
(defparameter *b* nil)
(defparameter *c* t)

(cond (*a* ; condition 1
          (format t "a is true~%"))
      (*b* ; condition 2
          (format t "b is true~%"))
      (*c* ; condition 3
          (format t "c is true~%"))
      (t
        (format t "not matched~%")))


;; use default match
(setf *a* nil)
(setf *c* nil)
(cond (*a*
        (format t "a is true~%"))
      (*b*
        (format t "b is true~%"))
      (*c*
        (format t "c is true~%"))
      (t
        (format t "not matched~%")))