(loop for i from 0 below 5
  do (format t "i=~d~%" i))

(let ((start 0) (count 0))
  (loop while (< start 10) do
    (when (evenp start)
      (setq start (+ start 2)))
    (incf count)
    (format t "[~d] start: ~d~%" count start)))