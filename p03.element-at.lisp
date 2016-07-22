;;;; Find the K'th element of a list

;;; The first element in the list is number 1.
;;; Example:
;;; * (element-at '(a b c d e) 3)
;;; C

(defun element-at (lista n)
  (if (= n 1)
      (first lista)
      (element-at (rest lista) (1- n))
      )
  )
