;;;; Eliminate consecutive duplicates of list elements.

;;; If a list contains repeated elements they should be replaced with a single
;;; copy of the element. The order of the elements should not be changed.

;;; Example:
;;; * (compress '(a a a a b c c a a d e e e e))
;;; (A B C A D E)

(defun compress (lista)
  (cond
    ((null lista) nil)
    ((null (cdr lista)) lista)
    ((eql (first lista) (first (rest lista)))
     (compress (rest lista)))
    (t (cons (first lista) (compress (rest lista))))))
