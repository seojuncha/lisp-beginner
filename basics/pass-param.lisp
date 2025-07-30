(defclass foo ()
    ((name :initarg :name :initform nil :accessor name)))

(defstruct boo
  name)

(defun func (cls)
  (setf (name cls) "osj"))

(defun bunc (struct)
  (setf (boo-name struct) "new"))

(defun func2 (v)
  (setf v 10))

(defvar *f* (make-instance 'foo :name "sjcha"))
(defvar *b* (make-boo :name "old"))
(defvar *v* 4)

(format t "before f: ~a~%" (name *f*))
(func *f*)
(format t "after f: ~a~%" (name *f*))
(terpri)

(format t "before b: ~a~%" (boo-name *b*))
(bunc *b*)
(format t "after b: ~a~%" (boo-name *b*))
(terpri)

(format t "before v: ~a~%" *v*)
(func2 *v*)
(format t "after v: ~a~%" *v*)
(terpri)
