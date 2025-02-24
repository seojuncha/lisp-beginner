(loop for i from 0 to 5 do
  (format t "~d~%" i))

(terpri)
(loop for i from 5 downto 0 do
  (format t "~d~%" i))

(terpri)
(loop for i from 0 to 5 by 2 do
  (format t "~d~%" i))