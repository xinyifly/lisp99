;;;; Find the last box of a list

;;; Example:
;;; * (my-last '(a b c d))
;;; (D)

(defun my-last (lista)
  (if (null lista)
      nil
      (if (null (rest lista))
          lista
          (my-last (rest lista)))))
