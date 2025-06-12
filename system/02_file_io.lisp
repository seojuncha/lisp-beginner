(defparameter *f* (open "/etc/hosts"))
(format t "*f* : ~a~%" *f*)

(format t "~%>> read a single line~%")
(let ((in (open "/etc/hosts")))
  (format t "~a~%" (read-line in))
  (close in))

(format t "~%>> read lines by end of the file.~%")
(let ((in (open "/etc/hosts")))
  (loop for line = (read-line in nil)
        while line do
          (format t "~a~%" line))
  (close in))

(format t "~%>> What is the return type of read-line?~%")
(let* ((in (open "/etc/hosts"))
       (ret (read-line in))) ; character array; string
  (format t "[~a] ~a~%" (type-of ret) ret)
  (close in))

(format t "~%>> What is the return type of read-char?~%")
(let* ((in (open "/etc/hosts"))
       (ret (read-char in))) ; character
  (format t "[~a] ~a~%" (type-of ret) ret)
  (close in))

(format t "~%>> What is the return type of read?~%")
(let* ((in (open "/etc/hosts"))
       (ret (read in))) ; s-expression, skip whitespace and comments 
  (format t "[~a] ~a~%" (type-of ret) ret)
  (close in))


(format t "~%>> Open a file with automatically closing~%")
(with-open-file (st "/etc/hosts")
  (format t "~a~%" (read-line st)))