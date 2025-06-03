;;; hyginene with gensym; generate symbol
;; make a temp symbol that is not interned.

(defparameter tmp-sym (gensym))
(format t "~a~%" tmp-sym)

;; why it is used in macro?
(defmacro double-val (val)
  `(+ ,val ,val))

(format t "double is ~a~%" (double-val 4))
(format t "double is ~a~%" (double-val (+ 1 2)))
;; => (+ 1 2) = 3
;; => (+ 3 3) = 6

(let ((x 1)
      (ret nil))
  (setq ret (double-val (incf x)))
  (format t "ret=~a~%" ret))

(format t "~a~%" (macroexpand '(double-val (incf x))))
(format t "~a~%" (macroexpand '(incf x)))
;; (+ (incf x) (incf x))
;; => (+ (setq x (+ 1 x)) (setq x (+ 1 x)))
;; if x == 1
;; (+ (setq x (+ 1 1)) (setq x (+ 1 x)))
;; => (+ (setq x 2) (setq x (+ 1 x)))
;; => (+ 2 (setq x (+ 1 2)))
;; => (+ 2 3)
;; => 5, that is not intended value.

(defmacro double-val2 (val)
  (let ((v (gensym)))
    `(let ((,v ,val))
       (+ ,v ,v))))

(let ((x 1)
      (ret nil))
  (setq ret (double-val2 (incf x)))
  (format t "ret=~a~%" ret))

(format t "~a~%" (macroexpand '(double-val2 (incf x))))
