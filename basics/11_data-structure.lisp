;;; The STRING typs is based on the VECTOR type
;;; VECTOR is similar with C++ vector

;;; simple vector array
;;;  vector literal
(defparameter *simple-vec* #('a 'b 'c))
(format t "[~a] simple-vec: ~a~%" (type-of *simple-vec*) *simple-vec*)

(defparameter *simple-vec2* (make-array 3))
(format t "[~a] simple-vec2: ~a~%" (type-of *simple-vec2*) *simple-vec2*)

;; however, simple vector cannot be modified.
;(vector-push 'd *simple-vec*)
;(vector-push 'd *simple-vec2*)

(defparameter *vec* (make-array 3 :fill-pointer 0))
(format t "[~a] before push vec: ~a~%" (type-of *vec*) *vec*)
(vector-push 'a *vec*)
(format t "[~a] after push vec: ~a~%" (type-of *vec*) *vec*)

; Can I push other data objects?
(vector-push '(+ 1 2) *vec*)
(format t "[~a] after second push vec: ~a~%" (type-of *vec*) *vec*)

;; change the :fill-pointer to not zero.
(defparameter *vec2* (make-array 3 :fill-pointer 1))
(format t "[~a] before push vec2: ~a~%" (type-of *vec2*) *vec2*)
(vector-push 1 *vec2*)
(format t "[~a] after push vec2: ~a~%" (type-of *vec2*) *vec2*)

;; Is the vector adjustable?
;;  default: NO
(vector-push 'a *vec2*)
(vector-push 'b *vec2*)
(format t "[~a] after second push vec2: ~a~%" (type-of *vec2*) *vec2*)

;; (0 1 A) -> Symbol B couldn't be pushed.
(defparameter *adj-vec*
              (make-array 3 :fill-pointer 0
                :adjustable t))

(vector-push 'a *adj-vec*)
(vector-push 'b *adj-vec*)
(vector-push 'c *adj-vec*)
(format t "[~a] push 3 elements adj-vec: ~a~%" (type-of *adj-vec*) *adj-vec*)

(vector-push 'd *adj-vec*)
(format t "[~a] vector-push fourth element adj-vec: ~a~%" (type-of *adj-vec*) *adj-vec*)
(vector-push-extend 'd *adj-vec*)
(format t "[~a] vector-push-extend fourth element adj-vec: ~a~%" (type-of *adj-vec*) *adj-vec*)

;; make a string vector
(defparameter *str-vec*
              (make-array 5
                :initial-element nil
                :fill-pointer 0
                :adjustable t
                :element-type 'chracter))

(format t "initial string vector: ~a~%" *str-vec*)

;; try to push a symbol
(vector-push 'a *str-vec*)
(vector-push "hello" *str-vec*)
(vector-push #\Q *str-vec*)

(format t "after push to string vector: ~a~%" *str-vec*)
(format t "fist element type: ~a~%" (type-of (elt *str-vec* 0)))
(format t "second element type: ~a~%" (type-of (elt *str-vec* 1)))
(format t "third element type: ~a~%" (type-of (elt *str-vec* 2)))

;; remove in sequente type
