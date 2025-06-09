;;; method combination
;;; :before, :after, :around

;; first define two classes
(defclass person ()
  ((name
    :initarg :name
    :initform "unkown")))

(defclass student (person)
  ((school
    :initarg :school
    :initform "unknown")))

(defparameter *p* (make-instance 'person :name "seojun"))
(defparameter *s* (make-instance 'student :name "elly" :school "chocolate"))

;;; then define generic and method functions
(defgeneric hello (obj))

(defmethod hello ((obj person))
  (format t "hello person ~a~%" (slot-value *p* 'name)))

(defmethod hello ((obj student))
  (format t "hello student ~a~%" (slot-value *s* 'name))
  (call-next-method))  ; call-next-method call parent's method if available.

(hello *p*)
(hello *s*)

(format t "~%")

;; called before a primary method
(defmethod hello :before ((obj person))
  (format t "--before person~%"))

;; called after a primary method
(defmethod hello :after ((obj person))
  (format t "--after person~%"))
(hello *p*)

(format t "~%")
(defmethod hello :before ((obj student))
  (format t "--before in ~a~%" (slot-value obj 'school)))

(defmethod hello :after ((obj student))
  (format t "--after in ~a~%" (slot-value obj 'school)))
(hello *s*)

(defmethod hello :around ((obj student))
  (format t "greet person!~%")
  (when (next-method-p)
    (call-next-method)))

(format t "~%  >> around person~%")
(hello *p*)

(format t "~%  >> around student ~%")
(hello *s*)