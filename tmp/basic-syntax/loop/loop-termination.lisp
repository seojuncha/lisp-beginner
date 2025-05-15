(defparameter *number* 5)
(loop while (< *number* 10) do
  (format t "~d~%" *number*)
  (incf *number*))

(loop for i in '(2 4 6 8 10)
  always (evenp i))

(let ((check-ret (loop for i in '(1 3 5 7 8 9)
                    thereis (if (evenp i) i))))
  (format t "return : ~d~%" check-ret))