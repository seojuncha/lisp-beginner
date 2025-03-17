(loop for i from 0 upto 6
  when (evenp i) do
    (format t "~d is even~%" i))

(terpri)
(loop for i from 1 to 10 do
  (if (oddp i)
    (format t "~A is odd.~%" i)
    (format t "~A is even.~%" i)))

(terpri)
; (loop for i from 1 to 10
;   if (oddp i) do
;     (format t "~A is odd.~%" i)
;     (format t "~A is even.~%" i))