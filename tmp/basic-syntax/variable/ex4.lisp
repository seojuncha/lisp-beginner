(defvar a 10)

(defun foo ()
  (format t "foo: ~d~%" a))

(defun bar ()
  (let ((a 20))
    (foo)))

(bar)