(defun foo (num)
  (incf num))

(let ((number 0))
  (format t "before: ~d~%" number)
  (setq number (foo number))
  (format t "after: ~d~%" number))