;;; If a variable binding in let of a function is the last evaluated form, 
;;; the function caller is returned back a new value from that function!
(defun foo (val)
  (let ((newval val))
    (+ newval 5)))

(let ((num 1) (ret nil))
  (setq ret (foo num))
  (format t "~a~%" ret))
