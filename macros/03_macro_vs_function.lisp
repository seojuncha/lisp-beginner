;;; macro vs function

(defun fn-foo (x y)
  (+ x y))

(defmacro macro-foo (x y)
  `(+ ,x ,y))

(defparameter fn-foo-ret (fn-foo 2 3))
(defparameter macro-foo-ret (macro-foo 2 3))

(format t "fn foo ret: ~a~%" fn-foo-ret)
(format t "macro foo ret: ~a~%" macro-foo-ret)