;;; map_filter_reduce.lisp
;;; all functions accept a sequence data structure; list or vector

;;; map
;;;  'map': mapping a function to each list element
(defparameter *1+map*
  (map 'list #'1+ '(1 2 3)))
;;; (1 2 3)
;;; => (1+1 1+2 1+3), as a result, (2 3 4)
(format t "one plus map: ~a~%" *1+map*)

;;; map vs mapcar
;(defparameter *map-test*
;  (map 'list #'1+ '(1 2 3) '(4 5 6)))
;(format t "map-test: ~a~%" *map-test*)
;;; => Invalid

(defparameter *mapcar-test*
  (mapcar #'+ '(1 2 3) '(4 5 6 7)))

(format t "mapcar-test: ~a~%" *mapcar-test*)
;;; (list (+ 1 4) (+ 2 5) (+ 3 6))

(defparameter *mapcar-arg-1* '(1 2 3))
(defparameter *mapcar-arg-2* '(4 5 6))
(defparameter *mapcar-test-2*
  (mapcar #'+ *mapcar-arg-1* *mapcar-arg-2*))

(format t "mapcar-test-2: ~a~%" *mapcar-test-2*)
(format t "mapcar-arg-1: ~a~%" *mapcar-arg-1*)
(format t "mapcar-arg-2: ~a~%" *mapcar-arg-2*)

(defparameter *mapc-arg-1* '(1 2 3))
(defparameter *mapc-arg-2* '(4 5 6))
(defparameter *mapc-test*
  (mapc #'+ *mapc-arg-1* *mapc-arg-2*))
(format t "mapc-test: ~a~%" *mapc-test*)
(format t "mapc-arg-1: ~a~%" *mapc-arg-1*)
(format t "mapc-arg-2: ~a~%" *mapc-arg-2*)

;;; filter
;;;  '*-if' with a predicate function
;;;  '*-if-not' with a predicate function
(defparameter *only-odd*
  (remove-if #'evenp '(1 2 3 4)))
(format t "only odd: ~a~%" *only-odd*)

;;; (1 2 3 4)
;;; (evenp 1) (evenp 2) (evenp 3) (evenp 4)
;;;    nil        t        nil       t
;;; so 2, 4 are removed. as a result, (1 3)

;;; reduce
(defparameter *reduced-by-plus*
  (reduce #'+ '(1 2 3)))
;;; (1 2 3) -> (+ (+ 1 2) 3)
;;; 1+2 = 3
;;; 3+3 = 6. as a result 6
(format t "reduced by plus: ~a~%" *reduced-by-plus*)