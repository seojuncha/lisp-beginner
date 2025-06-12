;;; user-defined class
;;; (defclass name (direct-superclass-name*)
;;;   (slot-specifier*))

;;; class's slot in Lisp == class's member variable in other languages
(defclass point ()
    (x y z))

(defparameter pt (make-instance 'point))
(format t "class of point: ~a~%" (class-of pt))
(format t "type of point: ~a~%" (type-of pt))
;(format t "~a~%" (inspect pt))

(defclass person ()
    ((name
      :initarg :name
      :initform "unknown")
     (age
      :initarg :age
      :initform 0)))

(defparameter p1 (make-instance 'person :name "seojun" :age 30))
(defparameter p1-name
              (slot-value p1 'name))

(format t "p1's name: ~s~%" p1-name)