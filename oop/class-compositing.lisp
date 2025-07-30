(defclass foo ()
    ((b :initarg :b :initform nil :accessor b)))

(defclass boo ()
    ((name :initarg :name :initform nil :accessor name)))

(defvar *f* (make-instance 'foo :b (make-instance 'boo :name "hello")))
(format t "name of boo of foo: ~s~%" (name (b *f*)))

(setf (name (b *f*)) "world")
(format t "name of boo of foo: ~s~%" (name (b *f*)))


(defvar *b* (make-instance 'boo :name "boo"))
(setf (b *f*) *b*)
(format t "name of boo of foo: ~s~%" (name (b *f*)))