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



;;;; Usage of gethash!