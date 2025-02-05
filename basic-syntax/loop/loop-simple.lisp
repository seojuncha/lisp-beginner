;;; Without 'defvar', or something similar function or macro, 
;;; sbcl produce an warning (undefined variable).
;;; Beacuse ret-loop is not initialized.
(defvar ret-loop)
(setf ret-loop (loop
                  (format t "hello~%")
                  (return "finished")))
(format t "~a~%" ret-loop)
(terpri)

(let ((ret-loop 0))
      (setf ret-loop (loop
                      (format t "hello~%")
                      (return "finished")))
      (format t "~a~%" ret-loop))
(terpri)

(let ((ter-loop 5) (i 0))
  (loop
    (format t "i=~d~%" i)
    (incf i)
    (when (= i ter-loop) 
      (return))))
(terpri)