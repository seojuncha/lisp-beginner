;;; dolist, dotimes, and loop
(format t "~%=== dotimes ===~%")

;;; var: i
;;; count-form: 5
(dotimes (i 5)
  (format t "i=~d~%" i))

;;; default return value: nil
(let ((do-ret (dotimes (i 5)
                (format t "i=~d~%" i))))
  (format t "dotimes ret: ~a~%" do-ret))

;;; define return value
(let ((do-ret (dotimes (i 5 "dotimes return value")
                (format t "i=~d~%" i))))
  (format t "dotimes ret: ~a~%" do-ret))

(let ((do-ret (dotimes (i 5 (format t "dotimes done~%"))
                (format t "i=~d~%" i))))
  (format t "dotimes ret: ~a~%" do-ret))

;;; dolist
(format t "~%=== dolist ===~%")

(dolist (i (list 1 2 3 4 5))
  (format t "i=~d~%" i))

(let ((dolist-ret (dolist (i (list 1 2 3 4 5)))))
  (format t "dolist-ret: ~a~%" dolist-ret))

(let ((dolist-ret (dolist (i (list 1 2 3 4 5) 99))))
  (format t "dolist-ret: ~a~%" dolist-ret))

(let ((dolist-ret (dolist (i (list 1 2 3 4 5) (format t "done!~%")))))
  (format t "dolist-ret: ~a~%" dolist-ret))

;;; loop
(format t "~%=== loop ===~%")

;;; loop keyword
;;;  keyword: do, summing, counting, for, collecting, finally
;; arithmetic counting
(loop
  for i from 0 below 5
  do   ; with compound-forms*
    (format t "i=~d~%" i)
    (format t "i*2=~d~%" (* i 2)))

(format t "~%")
(loop
  for i fixnum from 1 to 9 by 2
  do
    (format t "i=~d~%" i))

;;; loop {variable-clause}* {main-clause}*
