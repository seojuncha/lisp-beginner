;; method
;; defgeneric and defmethod

(defgeneric hello (who)
  (:documentation "say hello"))

;; use with a variable; any type
(defmethod hello (who)
  (format t "say hello to ~s~%" who))

(hello "seojun")

;; now, define a person class
(defclass person ()
  ((name
    :initarg :name
    :initform "unknown")))

;; use with a specifier
(defmethod hello ((who person))
  (format t "say hello to CLASS ~a~%" (slot-value who 'name)))

(defparameter *p1* (make-instance 'person :name "bob"))

(hello *p1*)
(hello '(a b c))