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
(loop for i from 0 below 5
  do   ; with compound-forms*
    (format t "i=~d~%" i)
    (format t "i*2=~d~%" (* i 2)))

(format t "~%")
(format t "Use for repeat")
(loop repeat 3 do
  (format t "repeat~%"))

;; for-as-arithmetic
(format t "~%")
(loop for i fixnum from 1 to 9 by 2
  do
    (format t "i=~d~%" i))

;; for-as-in-list
(format t "Use with list~%")
(loop for item in (list 1 2 3) do
  (format t "item=~d~%" item))

;; for-as-on-list
(loop for item on (list 10 20 30) do
  (format t "item=~d~%" item))

;; for-as-equals-then
;; iter 1>> x=0, y=1
;; iter 2>> x=1, y=2
;; iter 3>> x=2, y=4
;; iter 4>> x=4, y=8
;; iter 5>> x=8, y=16
(let ((loop-ret (loop repeat 5
                   for x = 0 then y   ; initial value of x is 0, then set to y on the next iteration
                   for y = 1 then (+ x y) ; intial value of y is 1, then set to (x + y) on the next iteration
                   collect x)))  ; make a list of collecting variable x
  (format t "loop-ret=~a~%" loop-ret))

;; local variables
(loop with var1 = 9
      with var2 = -1
  for i from 0 to 3 do
  (format t "local var1=~a~%" var1)
  (format t "local var2=~a~%" var2))

;; accumulation
(loop for i in (list 1 2 3 4 5 6)
  when (evenp i) collect i into var    ; conditional + accumulation
  do (format t "i=~d var=~a~%" i var)  ; evaluated on every iteration
  finally (format t "final var=~a~%" var)) ; only once evaluated

(format t "~%")
(defparameter *x* 1)
(loop while (<= (incf *x*) 4) do
  (format t "*x*=~a~%" *x*))

(format t "~%")
(loop with x = 0
   while (<= (incf x) 3) do
   (format t "local x=~a~%" x) repeat 3 do
   (format t "in repeat~%"))