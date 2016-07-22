;;;; Find the last but one box of a list

;;; Example:
;;; * (my-but-last '(a b c d))
;;; (C D)

(defun penultimo (lista)
  (let ((reverso (reverse lista)))
    (if (<= (length reverso) 2)
        lista
        (list (second reverso) (first reverso))
        )
    )
  )
