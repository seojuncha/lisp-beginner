(defparameter *ut* (get-universal-time))
(format t "current time: ~a~%" *ut*)

; (format t "decoded time: ~A~%" (decode-universal-time *ut*))

(defparameter *dt*
  (multiple-value-list   ; return a list from a form 
    (decode-universal-time *ut*)))

(format t "decoded time with timezone: ~a~%" *dt*)

(format t "before: ~a~%" (get-universal-time))
(sleep 1)   ; unit=second
(format t "after: ~a~%" (get-universal-time))