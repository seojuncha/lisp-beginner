(defparameter *str1* "it is the first")
(format t "~s~%" *str1*)

(defparameter *str2* (string "second string"))
(format t "~s~%" *str2*)

(defparameter *sym-str* (string 'sym))
(format t "~s~%" *sym-str*)

(defparameter *ms* (make-string 3 :initial-element #\k))
(format t "~s~%" *ms*)

;; like a sprintf in C
(defparameter *format-ret*
  (format nil "text: ~a" *sym-str*))
(format t "~a~%" *format-ret*)
