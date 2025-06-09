;;; slot accessor

(defclass person ()
  ((name
    :initarg :name
    :initform "unknown"
    :accessor get-name)
   (age
    :initarg :age
    :initform 0
    :accessor age)
   (parent
    :initarg :parent
    :initform "whois"
    :reader get-parent)
   (has-parent
    :initform "yes, I have"
    :accessor has-parent
    :allocation :class)))

;(defparameter *p* (make-instance 'person :name "seojun" :age 30 :parent "im"))
(defparameter *p* (make-instance 'person :name "seojun"))
(format t "name: ~a~%" (get-name *p*))

(setf (slot-value *p* 'age) 30)
(format t "age: ~a~%" (slot-value *p* 'age))

;; using accessor
(setf (age *p*) 25)
(format t "age: ~a~%" (age *p*))

;; writable by using slot-value even if it is as :reader
(setf (slot-value *p* 'parent) "my parent")
(format t "parent: ~a~%" (slot-value *p* 'parent))
(format t "parent: ~a~%" (get-parent *p*))

;; using like a static member
(format t "has parent? ~a~%" (has-parent *p*))

(defparameter *p2* (make-instance 'person :name "elly"))
(format t "has parent? ~a~%" (has-parent *p2*))

(setf (has-parent *p2*) "no, I don't")
(format t "has parent? ~a~%" (has-parent *p*))

(format t "using with-accessor~%")
(with-accessors ((age age)
                 (has-parent has-parent))
                *p*
  (setf (has-parent *p*) "cool"))

(format t "has parent? ~a~%" (has-parent *p*))
(format t "has parent? ~a~%" (has-parent *p2*))
