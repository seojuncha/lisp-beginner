#!/usr/bin/sbcl --script

(let ((result 0))
  (dotimes (i 5 result)
    (setf result (+ i result))
    (write result)
    (terpri)))
