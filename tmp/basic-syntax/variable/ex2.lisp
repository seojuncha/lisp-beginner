#!/usr/bin/env clisp

(defvar *count* 1)
(format t "~d~%" *count*)

(defvar *color* "red")
(format t "~s~%" *color*)

(defparameter *mode* 'normal)
(format t "~s~%" *mode*)

(defun print-color ()                   ; No function parameters
  (format t "color is ~s~%" *color*))   ; *color* is accesible in this function scope.

;; The color is printed even if there is no parameter for print-color function
(print-color)


;;; Edit a dynamic variable in a function.
(defun increase-count ()
  (incf *count*)
  (format t "new count: ~d~%" *count*))

(format t "Before count: ~d~%" *count*)
(increase-count)
(format t "After count: ~d~%" *count*)


;;; Shadowing of a global variable.
(let ((*mode* 'error))
  ;; *mode* bound to the new value, ERROR.
  (format t "Current mode is ~a~%" *mode*))

(format t "Global mode is ~a~%" *mode*)