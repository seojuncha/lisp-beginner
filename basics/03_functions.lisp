;;;; Core Concepts
;;;;  function declaration and use it
;;;;  optional, keyword, and rest parameters
;;;;  return statement

;;; very simple function to return T
(defun true? () t)
(format t "call true?: ~a~%" (true?))


(defun plus-one (val)
  (+ val 1))  ; last evaluated form is returned
(format t "4 + 1 = ~a~%" (plus-one 4))

;;; optional parameters
(defun ab-opt-c (a b &optional c)
  (list a b c))

(format t "(list 2 2) = ~a~%" (ab-opt-c 2 2))
(format t "(list 2 2 2) = ~a~%" (ab-opt-c 2 2 2))

;;; keyword parameters
(defun ab-key-cd (a b &key c d)
  (list a b c d))

;; invalid syntax
; (format t "keyword c and d ~a~%" (ab-key-cd "a" "b" "c" "d"))

;; correct syntax
(format t "keyword c and d ~s~%" (ab-key-cd "a" "b" :c "c" :d "d"))
(format t "keyword c ~s~%" (ab-key-cd "a" "b" :c "c"))


;;; rest parameters
;;;  &rest returns a list!
(defun a-rest-b (a &rest b)
  (list a b))
(format t "rest only b ~a~%" (a-rest-b 1 2 3 4))

(defun ret-func ()
  (format t "before return~%")
  (return-from ret-func (+ 1 1))
  (format t "after return~%"))  ; never reached

(format t "return from: ~a~%" (ret-func))