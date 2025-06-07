;; base class; person
(defclass person ()
  ((name
    :initarg :name
    :initform "unkonwn")
   (age
    :initarg :age
    :initform 0)))

;; subclass of person; baby
(defclass baby (person)
  ((parent
    :initarg :parent
    :initform (error "baby should have a parent!"))))

;; subclass of person; student
(defclass student (person)
  ((school
    :initarg :school
    :initform 'preschool)))

(defparameter *p* (make-instance 'person :name "seojun" :age 30))
(defparameter *b* (make-instance 'baby :name "mimi" :parent *p*))
; (defparameter *unknown-baby* (make-instance 'baby :name "uu"))   ;; an error occur
(defparameter *s* (make-instance 'student :name "elly"))

(format t "baby type: ~a~%" (type-of *b*))
(format t "student type: ~a~%" (type-of *s*))

(format t "baby's name: ~a~%" (slot-value *b* 'name))
(format t "baby's parent: ~a~%" (slot-value *b* 'parent))
(format t "baby's parent'name: ~a~%" (slot-value (slot-value *b* 'parent) 'name))
