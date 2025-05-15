(if t
  (progn 
    (format t "aa~%") 
    (format t "bb~%"))
  (progn 
    (format t "cc~%") 
    (format t "dd~%")))