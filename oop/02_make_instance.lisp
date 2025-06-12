;;; make-instance with slots

(defclass person ()
    ((name
      :initarg :name
      :initform "unkonwn")
     (age
      :initarg :age
      :initform 0)))

(defparameter unknown-person
              (make-instance 'person))

(format t "unkown person's name: ~s~%" (slot-value unknown-person 'name))

(defparameter p1
              (make-instance 'person
                :name "seojun"
                :age 30))

;; print the slot value
(format t "person's name: ~s~%" (slot-value p1 'name))

;; change the slot value
(setf (slot-value p1 'name) "eddie")
(format t "person's name: ~s~%" (slot-value p1 'name))

;; with-slots
;; list argument => slot name
;; then, class instance
(with-slots (name age) p1
  (format t "name: ~s, age: ~d~%" name age))

;; modify a class slot in function
(defun change-name (person new-name)
  (setf (slot-value person 'name) new-name))

;; is it possible below?
(with-slots (name) p1 unknown-person
  (change-name p1 "chris")
  (change-name unknown-person "chris")
  (format t "~s~%" (slot-value unknown-person 'name))
  (format t "new name: ~s~%" name))