(defparameter *default-hash-table* (make-hash-table))

(setf (gethash 'sym-banana *default-hash-table*) "banana")
(setf (gethash 'sym-apple *default-hash-table*) "apple")
(format t "is there banana? ~a~%" (gethash 'sym-banana *default-hash-table*))

(setf (gethash "apple" *default-hash-table*) (list 1 2 3))
(format t "is there string apple? ~a~%" (gethash "apple" *default-hash-table*))
(format t "is there symbol apple? ~a~%" (gethash 'sym-apple *default-hash-table*))

(setf (gethash 1.1 *default-hash-table*) "one")
(format t "is there 1? ~a~%" (gethash 1.1 *default-hash-table*))

;;;; Other :test type. 
(defparameter *equal-hash-table* (make-hash-table :test 'equal))
(defparameter *equalp-hash-table* (make-hash-table :test 'equalp))

(setf (gethash "one" *equal-hash-table*) 'one)
(setf (gethash "two" *equal-hash-table*) 'two)

(format t "equal hash table[one] : ~a~%" (gethash "one" *equal-hash-table*))
(format t "equal hash table[ONE] : ~a~%" (gethash "ONE" *equal-hash-table*))

;;;; Usage of gethash!
(multiple-value-bind (value present) (gethash "two" *equal-hash-table*)
  (if present 
    (format t "value ~a actually present.~%" value)
    (format t "value ~a because key not found.~%" value)))

(remhash "one" *equal-hash-table*)
(format t "equal hash table[one] : ~a~%" (gethash "one" *equal-hash-table*))

(if (gethash "one" *equal-hash-table*)
  (format t "exist~%")
  (format t "not exist~%"))

(defun check-from-gethash (key table)
  (if (gethash key table)
    (format t "exist~%")
    (format t "not exist~%")))

(defun check-from-value-bind (key table)
  (multiple-value-bind (value present) (gethash key table)
    (if present
      (format t "exist~%")
      (format t "not exist~%"))))

(defparameter *my-table* (make-hash-table))
(setf (gethash 'key1 *my-table*) nil)
(setf (gethash 'key2 *my-table*) nil)

(format t "size: ~a~%" (hash-table-count *my-table*))

(check-from-gethash 'key1 *my-table*)
(check-from-value-bind 'key1 *my-table*)
(clrhash *my-table*)
(format t "size: ~a~%" (hash-table-count *my-table*))
(format t "~a~%" *my-table*)

(setf *my-table* "table")
(format t "~a~%" *my-table*)